package com.callapp.contacts.framework.log;

import android.support.v4.media.session.PlaybackStateCompat;
import com.callapp.common.util.Files;
import com.callapp.contacts.CallAppApplication;
import com.google.api.client.a.g;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/log/FileLogger.class */
public class FileLogger {

    /* renamed from: a  reason: collision with root package name */
    private static final SimpleDateFormat f14413a = new SimpleDateFormat("dd/MM/yy HH:mm:ss.SSS");

    /* renamed from: b  reason: collision with root package name */
    private final File f14414b;

    /* renamed from: c  reason: collision with root package name */
    private final List<String> f14415c = new ArrayList(30);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/log/FileLogger$Level.class */
    public enum Level {
        INFO("INFO "),
        WARN("WARN "),
        ERROR("ERROR"),
        DEBUG("DEBUG");
        
        final String display;

        Level(String str) {
            this.display = str;
        }
    }

    FileLogger(File file) {
        this.f14414b = file;
    }

    private void a(Level level, String str) {
        synchronized (this) {
            this.f14415c.add(f14413a.format(new Date()) + ": " + level.display + ": " + str);
            if (this.f14415c.size() >= 30) {
                a();
            }
        }
    }

    private void a(StringBuilder sb) {
        for (String str : this.f14415c) {
            sb.append(str);
            sb.append('\n');
        }
    }

    public static FileLogger b(String str) {
        File externalCacheDir = CallAppApplication.get().getExternalCacheDir();
        return new FileLogger(externalCacheDir == null ? null : new File(externalCacheDir, str));
    }

    public final void a() {
        synchronized (this) {
            if (this.f14414b != null && !this.f14415c.isEmpty()) {
                if (this.f14414b.length() > PlaybackStateCompat.ACTION_SET_PLAYBACK_SPEED) {
                    this.f14414b.delete();
                }
                StringBuilder sb = new StringBuilder();
                a(sb);
                try {
                    Files.a(sb, this.f14414b, g.f31618a);
                } catch (IOException e) {
                }
            }
            this.f14415c.clear();
        }
    }

    public final void a(String str) {
        a(Level.ERROR, str);
    }
}
