package com.privacystar.core.data.shared_prefs;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��t\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\b\n\b&\u0018�� )2\u00020\u0001:\t()*+,-./0B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005J \u0010\u000f\u001a\u00060\u0010R\u00020��2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\rJ \u0010\u0016\u001a\u00060\u0017R\u00020��2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0018J \u0010\u0019\u001a\u00060\u001aR\u00020��2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u001bJ \u0010\u001c\u001a\u00060\u001dR\u00020��2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u001eJ\u0014\u0010\u001f\u001a\u00020\r2\n\u0010 \u001a\u0006\u0012\u0002\b\u00030!H\u0002J\u000e\u0010\"\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005J\"\u0010#\u001a\u00060$R\u00020��2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012J&\u0010%\u001a\u00060&R\u00020��2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u000e\b\u0002\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120'R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u00061"}, m254d2 = {"Lcom/privacystar/core/data/shared_prefs/Preferences;", "", "()V", "listeners", "", "Lcom/privacystar/core/data/shared_prefs/Preferences$SharedPrefsListener;", "prefs", "Landroid/content/SharedPreferences;", "getPrefs", "()Landroid/content/SharedPreferences;", "prefs$delegate", "Lkotlin/Lazy;", "addListener", "", "sharedPrefsListener", "booleanPref", "Lcom/privacystar/core/data/shared_prefs/Preferences$BooleanPrefDelegate;", "prefKey", "", "defaultValue", "", "clearListeners", "floatPref", "Lcom/privacystar/core/data/shared_prefs/Preferences$FloatPrefDelegate;", "", "intPref", "Lcom/privacystar/core/data/shared_prefs/Preferences$IntPrefDelegate;", "", "longPref", "Lcom/privacystar/core/data/shared_prefs/Preferences$LongPrefDelegate;", "", "onPrefChanged", "property", "Lkotlin/reflect/KProperty;", "removeListener", "stringPref", "Lcom/privacystar/core/data/shared_prefs/Preferences$StringPrefDelegate;", "stringSetPref", "Lcom/privacystar/core/data/shared_prefs/Preferences$StringSetPrefDelegate;", "", "BooleanPrefDelegate", "Companion", "FloatPrefDelegate", "IntPrefDelegate", "LongPrefDelegate", "PrefDelegate", "SharedPrefsListener", "StringPrefDelegate", "StringSetPrefDelegate", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/shared_prefs/Preferences.class */
public abstract class Preferences {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Preferences.class), "prefs", "getPrefs()Landroid/content/SharedPreferences;"))};
    public static final Companion Companion = new Companion(null);
    private static Context context;
    private final Lazy prefs$delegate = LazyKt.lazy(new Preferences$prefs$2(this));
    private final List<SharedPrefsListener> listeners = new ArrayList();

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0002\u0010\u0006J$\u0010\t\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\rH\u0096\u0002¢\u0006\u0002\u0010\u000eJ'\u0010\u000f\u001a\u00020\u00102\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\r2\u0006\u0010\u0011\u001a\u00020\u0002H\u0096\u0002R\u0011\u0010\u0005\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, m254d2 = {"Lcom/privacystar/core/data/shared_prefs/Preferences$BooleanPrefDelegate;", "Lcom/privacystar/core/data/shared_prefs/Preferences$PrefDelegate;", "", "prefKey", "", "defaultValue", "(Lcom/privacystar/core/data/shared_prefs/Preferences;Ljava/lang/String;Z)V", "getDefaultValue", "()Z", "getValue", "thisRef", "", "property", "Lkotlin/reflect/KProperty;", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Boolean;", "setValue", "", FirebaseAnalytics.Param.VALUE, "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/shared_prefs/Preferences$BooleanPrefDelegate.class */
    public final class BooleanPrefDelegate extends PrefDelegate<Boolean> {
        private final boolean defaultValue;

        public BooleanPrefDelegate(@Nullable String str, boolean z) {
            super(str);
            this.defaultValue = z;
        }

        public /* synthetic */ BooleanPrefDelegate(Preferences preferences, String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, z);
        }

        public final boolean getDefaultValue() {
            return this.defaultValue;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.privacystar.core.data.shared_prefs.Preferences.PrefDelegate
        @NotNull
        public Boolean getValue(@Nullable Object obj, @NotNull KProperty<?> property) {
            Intrinsics.checkParameterIsNotNull(property, "property");
            SharedPreferences prefs = Preferences.this.getPrefs();
            String prefKey = getPrefKey();
            if (prefKey == null) {
                prefKey = property.getName();
            }
            return Boolean.valueOf(prefs.getBoolean(prefKey, this.defaultValue));
        }

        @Override // com.privacystar.core.data.shared_prefs.Preferences.PrefDelegate
        public /* bridge */ /* synthetic */ void setValue(Object obj, KProperty kProperty, Boolean bool) {
            setValue(obj, kProperty, bool.booleanValue());
        }

        public void setValue(@Nullable Object obj, @NotNull KProperty<?> property, boolean z) {
            Intrinsics.checkParameterIsNotNull(property, "property");
            SharedPreferences.Editor edit = Preferences.this.getPrefs().edit();
            String prefKey = getPrefKey();
            if (prefKey == null) {
                prefKey = property.getName();
            }
            edit.putBoolean(prefKey, z).apply();
            Preferences.this.onPrefChanged(property);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0007"}, m254d2 = {"Lcom/privacystar/core/data/shared_prefs/Preferences$Companion;", "", "()V", "context", "Landroid/content/Context;", "init", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/shared_prefs/Preferences$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void init(@NotNull Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Preferences.context = context;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0002\u0010\u0006J$\u0010\t\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\rH\u0096\u0002¢\u0006\u0002\u0010\u000eJ'\u0010\u000f\u001a\u00020\u00102\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\r2\u0006\u0010\u0011\u001a\u00020\u0002H\u0096\u0002R\u0011\u0010\u0005\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, m254d2 = {"Lcom/privacystar/core/data/shared_prefs/Preferences$FloatPrefDelegate;", "Lcom/privacystar/core/data/shared_prefs/Preferences$PrefDelegate;", "", "prefKey", "", "defaultValue", "(Lcom/privacystar/core/data/shared_prefs/Preferences;Ljava/lang/String;F)V", "getDefaultValue", "()F", "getValue", "thisRef", "", "property", "Lkotlin/reflect/KProperty;", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Float;", "setValue", "", FirebaseAnalytics.Param.VALUE, "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/shared_prefs/Preferences$FloatPrefDelegate.class */
    public final class FloatPrefDelegate extends PrefDelegate<Float> {
        private final float defaultValue;

        public FloatPrefDelegate(@Nullable String str, float f) {
            super(str);
            this.defaultValue = f;
        }

        public /* synthetic */ FloatPrefDelegate(Preferences preferences, String str, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, f);
        }

        public final float getDefaultValue() {
            return this.defaultValue;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.privacystar.core.data.shared_prefs.Preferences.PrefDelegate
        @NotNull
        public Float getValue(@Nullable Object obj, @NotNull KProperty<?> property) {
            Intrinsics.checkParameterIsNotNull(property, "property");
            SharedPreferences prefs = Preferences.this.getPrefs();
            String prefKey = getPrefKey();
            if (prefKey == null) {
                prefKey = property.getName();
            }
            return Float.valueOf(prefs.getFloat(prefKey, this.defaultValue));
        }

        public void setValue(@Nullable Object obj, @NotNull KProperty<?> property, float f) {
            Intrinsics.checkParameterIsNotNull(property, "property");
            SharedPreferences.Editor edit = Preferences.this.getPrefs().edit();
            String prefKey = getPrefKey();
            if (prefKey == null) {
                prefKey = property.getName();
            }
            edit.putFloat(prefKey, f).apply();
            Preferences.this.onPrefChanged(property);
        }

        @Override // com.privacystar.core.data.shared_prefs.Preferences.PrefDelegate
        public /* bridge */ /* synthetic */ void setValue(Object obj, KProperty kProperty, Float f) {
            setValue(obj, kProperty, f.floatValue());
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0002\u0010\u0006J$\u0010\t\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\rH\u0096\u0002¢\u0006\u0002\u0010\u000eJ'\u0010\u000f\u001a\u00020\u00102\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\r2\u0006\u0010\u0011\u001a\u00020\u0002H\u0096\u0002R\u0011\u0010\u0005\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, m254d2 = {"Lcom/privacystar/core/data/shared_prefs/Preferences$IntPrefDelegate;", "Lcom/privacystar/core/data/shared_prefs/Preferences$PrefDelegate;", "", "prefKey", "", "defaultValue", "(Lcom/privacystar/core/data/shared_prefs/Preferences;Ljava/lang/String;I)V", "getDefaultValue", "()I", "getValue", "thisRef", "", "property", "Lkotlin/reflect/KProperty;", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Integer;", "setValue", "", FirebaseAnalytics.Param.VALUE, "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/shared_prefs/Preferences$IntPrefDelegate.class */
    public final class IntPrefDelegate extends PrefDelegate<Integer> {
        private final int defaultValue;

        public IntPrefDelegate(@Nullable String str, int i) {
            super(str);
            this.defaultValue = i;
        }

        public /* synthetic */ IntPrefDelegate(Preferences preferences, String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str, i);
        }

        public final int getDefaultValue() {
            return this.defaultValue;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.privacystar.core.data.shared_prefs.Preferences.PrefDelegate
        @NotNull
        public Integer getValue(@Nullable Object obj, @NotNull KProperty<?> property) {
            Intrinsics.checkParameterIsNotNull(property, "property");
            SharedPreferences prefs = Preferences.this.getPrefs();
            String prefKey = getPrefKey();
            if (prefKey == null) {
                prefKey = property.getName();
            }
            return Integer.valueOf(prefs.getInt(prefKey, this.defaultValue));
        }

        public void setValue(@Nullable Object obj, @NotNull KProperty<?> property, int i) {
            Intrinsics.checkParameterIsNotNull(property, "property");
            SharedPreferences.Editor edit = Preferences.this.getPrefs().edit();
            String prefKey = getPrefKey();
            if (prefKey == null) {
                prefKey = property.getName();
            }
            edit.putInt(prefKey, i).apply();
            Preferences.this.onPrefChanged(property);
        }

        @Override // com.privacystar.core.data.shared_prefs.Preferences.PrefDelegate
        public /* bridge */ /* synthetic */ void setValue(Object obj, KProperty kProperty, Integer num) {
            setValue(obj, kProperty, num.intValue());
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0002\u0010\u0006J$\u0010\t\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\rH\u0096\u0002¢\u0006\u0002\u0010\u000eJ'\u0010\u000f\u001a\u00020\u00102\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\r2\u0006\u0010\u0011\u001a\u00020\u0002H\u0096\u0002R\u0011\u0010\u0005\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, m254d2 = {"Lcom/privacystar/core/data/shared_prefs/Preferences$LongPrefDelegate;", "Lcom/privacystar/core/data/shared_prefs/Preferences$PrefDelegate;", "", "prefKey", "", "defaultValue", "(Lcom/privacystar/core/data/shared_prefs/Preferences;Ljava/lang/String;J)V", "getDefaultValue", "()J", "getValue", "thisRef", "", "property", "Lkotlin/reflect/KProperty;", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Long;", "setValue", "", FirebaseAnalytics.Param.VALUE, "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/shared_prefs/Preferences$LongPrefDelegate.class */
    public final class LongPrefDelegate extends PrefDelegate<Long> {
        private final long defaultValue;

        public LongPrefDelegate(@Nullable String str, long j) {
            super(str);
            this.defaultValue = j;
        }

        public /* synthetic */ LongPrefDelegate(Preferences preferences, String str, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, j);
        }

        public final long getDefaultValue() {
            return this.defaultValue;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.privacystar.core.data.shared_prefs.Preferences.PrefDelegate
        @NotNull
        public Long getValue(@Nullable Object obj, @NotNull KProperty<?> property) {
            Intrinsics.checkParameterIsNotNull(property, "property");
            SharedPreferences prefs = Preferences.this.getPrefs();
            String prefKey = getPrefKey();
            if (prefKey == null) {
                prefKey = property.getName();
            }
            return Long.valueOf(prefs.getLong(prefKey, this.defaultValue));
        }

        public void setValue(@Nullable Object obj, @NotNull KProperty<?> property, long j) {
            Intrinsics.checkParameterIsNotNull(property, "property");
            SharedPreferences.Editor edit = Preferences.this.getPrefs().edit();
            String prefKey = getPrefKey();
            if (prefKey == null) {
                prefKey = property.getName();
            }
            edit.putLong(prefKey, j).apply();
            Preferences.this.onPrefChanged(property);
        }

        @Override // com.privacystar.core.data.shared_prefs.Preferences.PrefDelegate
        public /* bridge */ /* synthetic */ void setValue(Object obj, KProperty kProperty, Long l) {
            setValue(obj, kProperty, l.longValue());
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b&\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J$\u0010\b\u001a\u00028��2\b\u0010\t\u001a\u0004\u0018\u00010\u00022\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u000bH¦\u0002¢\u0006\u0002\u0010\fJ,\u0010\r\u001a\u00020\u000e2\b\u0010\t\u001a\u0004\u0018\u00010\u00022\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u000b2\u0006\u0010\u000f\u001a\u00028��H¦\u0002¢\u0006\u0002\u0010\u0010R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m254d2 = {"Lcom/privacystar/core/data/shared_prefs/Preferences$PrefDelegate;", "T", "", "prefKey", "", "(Ljava/lang/String;)V", "getPrefKey", "()Ljava/lang/String;", "getValue", "thisRef", "property", "Lkotlin/reflect/KProperty;", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;", "setValue", "", FirebaseAnalytics.Param.VALUE, "(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/shared_prefs/Preferences$PrefDelegate.class */
    public static abstract class PrefDelegate<T> {
        @Nullable
        private final String prefKey;

        public PrefDelegate(@Nullable String str) {
            this.prefKey = str;
        }

        @Nullable
        public final String getPrefKey() {
            return this.prefKey;
        }

        public abstract T getValue(@Nullable Object obj, @NotNull KProperty<?> kProperty);

        public abstract void setValue(@Nullable Object obj, @NotNull KProperty<?> kProperty, T t);
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005H&¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/data/shared_prefs/Preferences$SharedPrefsListener;", "", "onSharedPrefChanged", "", "property", "Lkotlin/reflect/KProperty;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/shared_prefs/Preferences$SharedPrefsListener.class */
    public interface SharedPrefsListener {
        void onSharedPrefChanged(@NotNull KProperty<?> kProperty);
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0002\u0010\u0005J!\u0010\b\u001a\u0004\u0018\u00010\u00022\b\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH\u0096\u0002J)\u0010\r\u001a\u00020\u000e2\b\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0096\u0002R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, m254d2 = {"Lcom/privacystar/core/data/shared_prefs/Preferences$StringPrefDelegate;", "Lcom/privacystar/core/data/shared_prefs/Preferences$PrefDelegate;", "", "prefKey", "defaultValue", "(Lcom/privacystar/core/data/shared_prefs/Preferences;Ljava/lang/String;Ljava/lang/String;)V", "getDefaultValue", "()Ljava/lang/String;", "getValue", "thisRef", "", "property", "Lkotlin/reflect/KProperty;", "setValue", "", FirebaseAnalytics.Param.VALUE, "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/shared_prefs/Preferences$StringPrefDelegate.class */
    public final class StringPrefDelegate extends PrefDelegate<String> {
        @Nullable
        private final String defaultValue;

        public StringPrefDelegate(@Nullable String str, @Nullable String str2) {
            super(str);
            this.defaultValue = str2;
        }

        public /* synthetic */ StringPrefDelegate(Preferences preferences, String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, str2);
        }

        @Nullable
        public final String getDefaultValue() {
            return this.defaultValue;
        }

        @Override // com.privacystar.core.data.shared_prefs.Preferences.PrefDelegate
        @Nullable
        /* renamed from: getValue  reason: avoid collision after fix types in other method */
        public String getValue2(@Nullable Object obj, @NotNull KProperty<?> property) {
            Intrinsics.checkParameterIsNotNull(property, "property");
            SharedPreferences prefs = Preferences.this.getPrefs();
            String prefKey = getPrefKey();
            if (prefKey == null) {
                prefKey = property.getName();
            }
            return prefs.getString(prefKey, this.defaultValue);
        }

        @Override // com.privacystar.core.data.shared_prefs.Preferences.PrefDelegate
        public /* bridge */ /* synthetic */ void setValue(Object obj, KProperty kProperty, String str) {
            setValue2(obj, (KProperty<?>) kProperty, str);
        }

        /* renamed from: setValue  reason: avoid collision after fix types in other method */
        public void setValue2(@Nullable Object obj, @NotNull KProperty<?> property, @Nullable String str) {
            Intrinsics.checkParameterIsNotNull(property, "property");
            SharedPreferences.Editor edit = Preferences.this.getPrefs().edit();
            String prefKey = getPrefKey();
            if (prefKey == null) {
                prefKey = property.getName();
            }
            edit.putString(prefKey, str).apply();
            Preferences.this.onPrefChanged(property);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0002\u0010\u0006J%\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\rH\u0096\u0002J-\u0010\u000e\u001a\u00020\u000f2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\r2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0096\u0002R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\u0011"}, m254d2 = {"Lcom/privacystar/core/data/shared_prefs/Preferences$StringSetPrefDelegate;", "Lcom/privacystar/core/data/shared_prefs/Preferences$PrefDelegate;", "", "", "prefKey", "defaultValue", "(Lcom/privacystar/core/data/shared_prefs/Preferences;Ljava/lang/String;Ljava/util/Set;)V", "getDefaultValue", "()Ljava/util/Set;", "getValue", "thisRef", "", "property", "Lkotlin/reflect/KProperty;", "setValue", "", FirebaseAnalytics.Param.VALUE, "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/shared_prefs/Preferences$StringSetPrefDelegate.class */
    public final class StringSetPrefDelegate extends PrefDelegate<Set<? extends String>> {
        @NotNull
        private final Set<String> defaultValue;
        final /* synthetic */ Preferences this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StringSetPrefDelegate(@Nullable Preferences preferences, @NotNull String str, Set<String> defaultValue) {
            super(str);
            Intrinsics.checkParameterIsNotNull(defaultValue, "defaultValue");
            this.this$0 = preferences;
            this.defaultValue = defaultValue;
        }

        public /* synthetic */ StringSetPrefDelegate(Preferences preferences, String str, Set set, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(preferences, (i & 1) != 0 ? null : str, set);
        }

        @NotNull
        public final Set<String> getDefaultValue() {
            return this.defaultValue;
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x003a, code lost:
            if (r5 != null) goto L_0x0044;
         */
        @Override // com.privacystar.core.data.shared_prefs.Preferences.PrefDelegate
        @org.jetbrains.annotations.NotNull
        /* renamed from: getValue  reason: avoid collision after fix types in other method */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.util.Set<? extends java.lang.String> getValue2(@org.jetbrains.annotations.Nullable java.lang.Object r5, @org.jetbrains.annotations.NotNull kotlin.reflect.KProperty<?> r6) {
            /*
                r4 = this;
                r0 = r6
                java.lang.String r1 = "property"
                kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
                r0 = r4
                com.privacystar.core.data.shared_prefs.Preferences r0 = r0.this$0
                android.content.SharedPreferences r0 = com.privacystar.core.data.shared_prefs.Preferences.access$getPrefs$p(r0)
                r7 = r0
                r0 = r4
                java.lang.String r0 = r0.getPrefKey()
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x001a
                goto L_0x0021
            L_0x001a:
                r0 = r6
                java.lang.String r0 = r0.getName()
                r5 = r0
            L_0x0021:
                r0 = r7
                r1 = r5
                r2 = r4
                java.util.Set<java.lang.String> r2 = r2.defaultValue
                java.util.Set r0 = r0.getStringSet(r1, r2)
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x0040
                r0 = r5
                java.lang.Iterable r0 = (java.lang.Iterable) r0
                java.util.Set r0 = kotlin.collections.CollectionsKt.toSet(r0)
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x0040
                goto L_0x0044
            L_0x0040:
                java.util.Set r0 = kotlin.collections.SetsKt.emptySet()
                r5 = r0
            L_0x0044:
                r0 = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.shared_prefs.Preferences.StringSetPrefDelegate.getValue2(java.lang.Object, kotlin.reflect.KProperty):java.util.Set");
        }

        @Override // com.privacystar.core.data.shared_prefs.Preferences.PrefDelegate
        public /* bridge */ /* synthetic */ void setValue(Object obj, KProperty kProperty, Set<? extends String> set) {
            setValue2(obj, (KProperty<?>) kProperty, (Set<String>) set);
        }

        /* renamed from: setValue  reason: avoid collision after fix types in other method */
        public void setValue2(@Nullable Object obj, @NotNull KProperty<?> property, @NotNull Set<String> value) {
            Intrinsics.checkParameterIsNotNull(property, "property");
            Intrinsics.checkParameterIsNotNull(value, "value");
            SharedPreferences.Editor edit = this.this$0.getPrefs().edit();
            String prefKey = getPrefKey();
            if (prefKey == null) {
                prefKey = property.getName();
            }
            edit.putStringSet(prefKey, value).apply();
            this.this$0.onPrefChanged(property);
        }
    }

    @NotNull
    public static /* synthetic */ BooleanPrefDelegate booleanPref$default(Preferences preferences, String str, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: booleanPref");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return preferences.booleanPref(str, z);
    }

    @NotNull
    public static /* synthetic */ FloatPrefDelegate floatPref$default(Preferences preferences, String str, float f, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: floatPref");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        return preferences.floatPref(str, f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SharedPreferences getPrefs() {
        Lazy lazy = this.prefs$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (SharedPreferences) lazy.getValue();
    }

    @NotNull
    public static /* synthetic */ IntPrefDelegate intPref$default(Preferences preferences, String str, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: intPref");
        }
        if ((i2 & 1) != 0) {
            str = null;
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return preferences.intPref(str, i);
    }

    @NotNull
    public static /* synthetic */ LongPrefDelegate longPref$default(Preferences preferences, String str, long j, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: longPref");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            j = 0;
        }
        return preferences.longPref(str, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPrefChanged(KProperty<?> kProperty) {
        for (SharedPrefsListener sharedPrefsListener : this.listeners) {
            sharedPrefsListener.onSharedPrefChanged(kProperty);
        }
    }

    @NotNull
    public static /* synthetic */ StringPrefDelegate stringPref$default(Preferences preferences, String str, String str2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: stringPref");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return preferences.stringPref(str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static /* synthetic */ StringSetPrefDelegate stringSetPref$default(Preferences preferences, String str, Set set, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: stringSetPref");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            set = new HashSet();
        }
        return preferences.stringSetPref(str, set);
    }

    public final void addListener(@NotNull SharedPrefsListener sharedPrefsListener) {
        Intrinsics.checkParameterIsNotNull(sharedPrefsListener, "sharedPrefsListener");
        this.listeners.add(sharedPrefsListener);
    }

    @NotNull
    public final BooleanPrefDelegate booleanPref(@Nullable String str, boolean z) {
        return new BooleanPrefDelegate(str, z);
    }

    public final void clearListeners() {
        this.listeners.clear();
    }

    @NotNull
    public final FloatPrefDelegate floatPref(@Nullable String str, float f) {
        return new FloatPrefDelegate(str, f);
    }

    @NotNull
    public final IntPrefDelegate intPref(@Nullable String str, int i) {
        return new IntPrefDelegate(str, i);
    }

    @NotNull
    public final LongPrefDelegate longPref(@Nullable String str, long j) {
        return new LongPrefDelegate(str, j);
    }

    public final void removeListener(@NotNull SharedPrefsListener sharedPrefsListener) {
        Intrinsics.checkParameterIsNotNull(sharedPrefsListener, "sharedPrefsListener");
        this.listeners.remove(sharedPrefsListener);
    }

    @NotNull
    public final StringPrefDelegate stringPref(@Nullable String str, @Nullable String str2) {
        return new StringPrefDelegate(str, str2);
    }

    @NotNull
    public final StringSetPrefDelegate stringSetPref(@Nullable String str, @NotNull Set<String> defaultValue) {
        Intrinsics.checkParameterIsNotNull(defaultValue, "defaultValue");
        return new StringSetPrefDelegate(this, str, defaultValue);
    }
}
