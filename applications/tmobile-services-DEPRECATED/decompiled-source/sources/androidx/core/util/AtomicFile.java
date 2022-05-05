package androidx.core.util;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/core/util/AtomicFile.class */
public class AtomicFile {

    /* renamed from: a */
    private final File f3202a;

    /* renamed from: b */
    private final File f3203b;

    public AtomicFile(@NonNull File file) {
        this.f3202a = file;
        this.f3203b = new File(file.getPath() + ".bak");
    }

    /* renamed from: d */
    private static boolean m19349d(@NonNull FileOutputStream fileOutputStream) {
        try {
            fileOutputStream.getFD().sync();
            return true;
        } catch (IOException e) {
            return false;
        }
    }

    /* renamed from: a */
    public void m19352a(@Nullable FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            m19349d(fileOutputStream);
            try {
                fileOutputStream.close();
                this.f3202a.delete();
                this.f3203b.renameTo(this.f3202a);
            } catch (IOException e) {
                Log.w("AtomicFile", "failWrite: Got exception:", e);
            }
        }
    }

    /* renamed from: b */
    public void m19351b(@Nullable FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            m19349d(fileOutputStream);
            try {
                fileOutputStream.close();
                this.f3203b.delete();
            } catch (IOException e) {
                Log.w("AtomicFile", "finishWrite: Got exception:", e);
            }
        }
    }

    @NonNull
    /* renamed from: c */
    public FileOutputStream m19350c() throws IOException {
        FileOutputStream fileOutputStream;
        if (this.f3202a.exists()) {
            if (this.f3203b.exists()) {
                this.f3202a.delete();
            } else if (!this.f3202a.renameTo(this.f3203b)) {
                Log.w("AtomicFile", "Couldn't rename file " + this.f3202a + " to backup file " + this.f3203b);
            }
        }
        try {
            fileOutputStream = new FileOutputStream(this.f3202a);
        } catch (FileNotFoundException e) {
            if (this.f3202a.getParentFile().mkdirs()) {
                try {
                    fileOutputStream = new FileOutputStream(this.f3202a);
                } catch (FileNotFoundException e2) {
                    throw new IOException("Couldn't create " + this.f3202a);
                }
            } else {
                throw new IOException("Couldn't create directory " + this.f3202a);
            }
        }
        return fileOutputStream;
    }
}
