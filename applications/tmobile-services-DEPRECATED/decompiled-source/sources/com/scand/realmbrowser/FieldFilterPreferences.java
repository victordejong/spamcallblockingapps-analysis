package com.scand.realmbrowser;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/FieldFilterPreferences.class */
public class FieldFilterPreferences {

    /* renamed from: b */
    private static FieldFilterPreferences f12518b;

    /* renamed from: a */
    private SharedPreferences f12519a;

    private FieldFilterPreferences(Context context) {
        this.f12519a = context.getApplicationContext().getSharedPreferences("fieldsFilter.prefs", 0);
    }

    /* renamed from: a */
    private String m7742a(@NonNull Class cls, @NonNull Field field) {
        return cls.getCanonicalName() + ":" + field.getName();
    }

    /* renamed from: b */
    public static FieldFilterPreferences m7741b(Context context) {
        if (f12518b == null) {
            f12518b = new FieldFilterPreferences(context);
        }
        return f12518b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public boolean m7740c(@NonNull Class cls, @NonNull Field field) {
        return this.f12519a.getBoolean(m7742a(cls, field), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m7739d(@NonNull Class cls, @NonNull Field field, boolean z) {
        SharedPreferences.Editor edit = this.f12519a.edit();
        edit.putBoolean(m7742a(cls, field), z);
        edit.commit();
    }
}
