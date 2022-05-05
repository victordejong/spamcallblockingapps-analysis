package org.apache.commons.p018io;

import java.io.File;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
/* renamed from: org.apache.commons.io.FileCleaningTracker */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/FileCleaningTracker.class */
public class FileCleaningTracker {
    Thread reaper;

    /* renamed from: q */
    ReferenceQueue<Object> f763q = new ReferenceQueue<>();
    final Collection<Tracker> trackers = Collections.synchronizedSet(new HashSet());
    final List<String> deleteFailures = Collections.synchronizedList(new ArrayList());
    volatile boolean exitWhenFinished = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.apache.commons.io.FileCleaningTracker$Reaper */
    /* loaded from: classes2-dex2jar.jar:org/apache/commons/io/FileCleaningTracker$Reaper.class */
    public final class Reaper extends Thread {
        Reaper() {
            super("File Reaper");
            setPriority(10);
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                if (!FileCleaningTracker.this.exitWhenFinished || FileCleaningTracker.this.trackers.size() > 0) {
                    try {
                        Tracker tracker = (Tracker) FileCleaningTracker.this.f763q.remove();
                        FileCleaningTracker.this.trackers.remove(tracker);
                        if (!tracker.delete()) {
                            FileCleaningTracker.this.deleteFailures.add(tracker.getPath());
                        }
                        tracker.clear();
                    } catch (InterruptedException e) {
                    }
                } else {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.apache.commons.io.FileCleaningTracker$Tracker */
    /* loaded from: classes2-dex2jar.jar:org/apache/commons/io/FileCleaningTracker$Tracker.class */
    public static final class Tracker extends PhantomReference<Object> {
        private final FileDeleteStrategy deleteStrategy;
        private final String path;

        Tracker(String str, FileDeleteStrategy fileDeleteStrategy, Object obj, ReferenceQueue<? super Object> referenceQueue) {
            super(obj, referenceQueue);
            this.path = str;
            this.deleteStrategy = fileDeleteStrategy == null ? FileDeleteStrategy.NORMAL : fileDeleteStrategy;
        }

        public boolean delete() {
            return this.deleteStrategy.deleteQuietly(new File(this.path));
        }

        public String getPath() {
            return this.path;
        }
    }

    private void addTracker(String str, Object obj, FileDeleteStrategy fileDeleteStrategy) {
        synchronized (this) {
            if (this.exitWhenFinished) {
                throw new IllegalStateException("No new trackers can be added once exitWhenFinished() is called");
            }
            if (this.reaper == null) {
                this.reaper = new Reaper();
                this.reaper.start();
            }
            this.trackers.add(new Tracker(str, fileDeleteStrategy, obj, this.f763q));
        }
    }

    public void exitWhenFinished() {
        synchronized (this) {
            this.exitWhenFinished = true;
            if (this.reaper != null) {
                synchronized (this.reaper) {
                    this.reaper.interrupt();
                }
            }
        }
    }

    public List<String> getDeleteFailures() {
        return this.deleteFailures;
    }

    public int getTrackCount() {
        return this.trackers.size();
    }

    public void track(File file, Object obj) {
        track(file, obj, (FileDeleteStrategy) null);
    }

    public void track(File file, Object obj, FileDeleteStrategy fileDeleteStrategy) {
        if (file == null) {
            throw new NullPointerException("The file must not be null");
        }
        addTracker(file.getPath(), obj, fileDeleteStrategy);
    }

    public void track(String str, Object obj) {
        track(str, obj, (FileDeleteStrategy) null);
    }

    public void track(String str, Object obj, FileDeleteStrategy fileDeleteStrategy) {
        if (str == null) {
            throw new NullPointerException("The path must not be null");
        }
        addTracker(str, obj, fileDeleteStrategy);
    }
}
