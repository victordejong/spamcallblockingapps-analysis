package com.truecaller.settings;

import java.util.Set;
/* loaded from: classes13-dex2jar.jar:com/truecaller/settings/CallingSettings.class */
public interface CallingSettings {

    /* loaded from: classes13-dex2jar.jar:com/truecaller/settings/CallingSettings$BlockMethod.class */
    public enum BlockMethod {
        Reject,
        Mute
    }

    /* renamed from: Q1 */
    BlockMethod mo8950Q1(int i);

    boolean contains(String str);

    boolean getBoolean(String str);

    boolean getBoolean(String str, boolean z);

    int getInt(String str, int i);

    long getLong(String str, long j);

    String getString(String str);

    String getString(String str, String str2);

    /* renamed from: l */
    int m34737l(String str);

    /* renamed from: p */
    Set<String> m34736p(String str);

    void putBoolean(String str, boolean z);

    void putInt(String str, int i);

    void putLong(String str, long j);

    void putString(String str, String str2);

    void putStringSet(String str, Set<String> set);

    void remove(String str);

    /* renamed from: z */
    BlockMethod mo8949z();
}
