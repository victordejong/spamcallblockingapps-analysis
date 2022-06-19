.class public Lcom/callapp/contacts/manager/preferences/prefs/PrefsAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences;
.implements Landroid/content/SharedPreferences$Editor;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/preferences/prefs/PrefsAdapter;->a:Ljava/util/List;

    .line 15
    iput-object p1, p0, Lcom/callapp/contacts/manager/preferences/prefs/PrefsAdapter;->b:Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/manager/preferences/prefs/PrefsAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 84
    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 0

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 0

    return-object p0
.end method

.method public commit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/manager/preferences/prefs/PrefsAdapter;->b:Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

    .line 1061
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 0

    return-object p0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 52
    new-instance v0, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 36
    new-instance v0, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 41
    new-instance v0, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 25
    new-instance v0, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-direct {v0, p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 116
    new-instance v0, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/PrefsAdapter;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 0

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 96
    new-instance v0, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/PrefsAdapter;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 103
    new-instance v0, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/PrefsAdapter;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 77
    new-instance v0, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/PrefsAdapter;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    return-object p0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/manager/preferences/prefs/PrefsAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/manager/preferences/prefs/PrefsAdapter;->b:Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/PrefsAdapter;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/manager/preferences/prefs/PrefsAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
