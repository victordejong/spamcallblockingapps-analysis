package com.callapp.contacts.manager.preferences.prefs;

import android.content.SharedPreferences;
import com.callapp.contacts.manager.preferences.LocalPrefsStore;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/prefs/PrefsAdapter.class */
public class PrefsAdapter implements SharedPreferences, SharedPreferences.Editor {

    /* renamed from: a */
    private final List<SharedPreferences.OnSharedPreferenceChangeListener> f26674a = new ArrayList();

    /* renamed from: b */
    private final LocalPrefsStore f26675b;

    public PrefsAdapter(LocalPrefsStore localPrefsStore) {
        this.f26675b = localPrefsStore;
    }

    /* renamed from: a */
    private void m28167a(String str) {
        for (SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener : this.f26674a) {
            onSharedPreferenceChangeListener.onSharedPreferenceChanged(this, str);
        }
    }

    @Override // android.content.SharedPreferences.Editor
    public void apply() {
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor clear() {
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public boolean commit() {
        return true;
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        return this.f26675b.m28182a(str) != null;
    }

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return this;
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        return Collections.emptyMap();
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z) {
        return new BooleanPref(str, Boolean.valueOf(z)).get().booleanValue();
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f) {
        return BitmapDescriptorFactory.HUE_RED;
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i) {
        return new IntegerPref(str, Integer.valueOf(i)).get().intValue();
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j) {
        return new LongPref(str, Long.valueOf(j)).get().longValue();
    }

    @Override // android.content.SharedPreferences
    public String getString(String str, String str2) {
        return new StringPref(str, str2).get();
    }

    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        return Collections.emptySet();
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putBoolean(String str, boolean z) {
        new BooleanPref(str).set(Boolean.valueOf(z));
        m28167a(str);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putFloat(String str, float f) {
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putInt(String str, int i) {
        new IntegerPref(str).set(Integer.valueOf(i));
        m28167a(str);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putLong(String str, long j) {
        new LongPref(str).set(Long.valueOf(j));
        m28167a(str);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putString(String str, String str2) {
        new StringPref(str).set(str2);
        m28167a(str);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
        return this;
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f26674a.add(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor remove(String str) {
        this.f26675b.m28181a(str, null);
        m28167a(str);
        return this;
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f26674a.remove(onSharedPreferenceChangeListener);
    }
}
