package com.callapp.contacts.framework.log;

import android.support.p008v4.media.session.PlaybackStateCompat;
import com.callapp.common.util.Files;
import com.callapp.contacts.CallAppApplication;
import com.google.api.client.p379a.C15227g;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/log/FileLogger.class */
public class FileLogger {

    /* renamed from: a */
    private static final SimpleDateFormat f25193a = new SimpleDateFormat("dd/MM/yy HH:mm:ss.SSS");

    /* renamed from: b */
    private final File f25194b;

    /* renamed from: c */
    private final List<String> f25195c = new ArrayList(30);

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
        this.f25194b = file;
    }

    /* renamed from: a */
    private void m28979a(Level level, String str) {
        synchronized (this) {
            this.f25195c.add(f25193a.format(new Date()) + ": " + level.display + ": " + str);
            if (this.f25195c.size() >= 30) {
                m28980a();
            }
        }
    }

    /* renamed from: a */
    private void m28977a(StringBuilder sb) {
        for (String str : this.f25195c) {
            sb.append(str);
            sb.append('\n');
        }
    }

    /* renamed from: b */
    public static FileLogger m28976b(String str) {
        File externalCacheDir = CallAppApplication.get().getExternalCacheDir();
        return new FileLogger(externalCacheDir == null ? null : new File(externalCacheDir, str));
    }

    /* renamed from: a */
    public final void m28980a() {
        synchronized (this) {
            if (this.f25194b != null && !this.f25195c.isEmpty()) {
                if (this.f25194b.length() > PlaybackStateCompat.ACTION_SET_PLAYBACK_SPEED) {
                    this.f25194b.delete();
                }
                StringBuilder sb = new StringBuilder();
                m28977a(sb);
                try {
                    Files.m31922a(sb, this.f25194b, C15227g.f55068a);
                } catch (IOException e) {
                }
            }
            this.f25195c.clear();
        }
    }

    /* renamed from: a */
    public final void m28978a(String str) {
        m28979a(Level.ERROR, str);
    }
}
