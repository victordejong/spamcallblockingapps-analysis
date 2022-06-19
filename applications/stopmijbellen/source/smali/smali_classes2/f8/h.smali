.class public Lf8/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const-string v0, "url"

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lf8/h;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "gH#Yu87&kHna%Oe3"

    .line 2
    invoke-static {p1, p0}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static B(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pinumber"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    invoke-static {p0, v0}, Lf8/h;->A(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static C(Landroid/content/Context;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2
    sget-object v1, Lg8/d;->a:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pinumber"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static D(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    .line 1
    sget-object v0, Lg8/d;->a:[Ljava/lang/String;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "picount"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static E(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "psetapponoff"

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static F(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "psetblockmethod"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static G(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "psetblock2call"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static H(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "psetdarktheme"

    .line 2
    invoke-static {p0, v1, v0}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static I(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "psetdebug"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static J(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "psetdev"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static K(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "psetfservice"

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static L(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "psetfserviceicon"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static M(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "psethideclearbutton"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static N(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "psetlanguage"

    invoke-static {p0, v1, v0}, Lf8/h;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lf8/h;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static O(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "psetaslfn"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static P(Landroid/content/Context;)I
    .locals 2

    const-string v0, "#20998B"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "psetnotifcustomtextcolor"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static Q(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "psetnotifusecustomtextcolor"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static R(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "psetaspe"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static S(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "psetpresets"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static T(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "psetss"

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static U(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v1, "setsimcolor1"

    goto :goto_0

    :cond_0
    const-string v1, "setsimcolor2"

    :goto_0
    if-ne p1, v0, :cond_1

    const-string p1, "#00B22D"

    goto :goto_1

    :cond_1
    const-string p1, "#E3024C"

    .line 1
    :goto_1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2
    invoke-static {p0, v1, p1}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static V(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "psetub"

    const-string v1, ""

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "http://127.0.0.1"

    return-object p0

    :cond_0
    const-string v0, "lkTY6y7#bhZA4ff4"

    .line 3
    invoke-static {v0, p0}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static W(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "psetusealtcontactsname"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static X(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "psetusednd"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static Y(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "psetusedefphoneapp"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static Z(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "psetusesystemvibration"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lf8/h;->e(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "appblc"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static a0(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "show_filter"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "bwlmultiselectenabled"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static b0(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "psimfirstno"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "psbb"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static c0(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "socurl"

    const-string v1, "http://127.0.0.1"

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    const-string v0, "psbtdd"

    const-string v1, ""

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lf8/g;->l(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v0, "psbtd"

    .line 5
    invoke-static {p0, v0, v1}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "psbt"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static e0(Landroid/content/Context;)Ljava/util/Date;
    .locals 2

    const-string v0, "unbandate"

    const-string v1, "X"

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "yyyy-MM-dd"

    invoke-static {p0, v0}, Lf8/g;->P(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static f0(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lf8/h;->p(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ierror"

    invoke-static {p0, v1, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    const-string v0, "psctdd"

    const-string v1, ""

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lf8/g;->l(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v0, "psctd"

    .line 5
    invoke-static {p0, v0, v1}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static g0(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "psct"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static h0(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "lastdelid"

    invoke-static {p0, v0, p1}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static i(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "precommandid"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static i0(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "ierror"

    invoke-static {p0, v0, p1}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static j(Landroid/content/Context;)J
    .locals 2

    const-string v0, "contactslastsync"

    .line 1
    invoke-static {p0, v0}, Lf8/h;->w(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "CC"

    const-string v1, ""

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k0(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "dsuclbl"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static l0(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "pierror"

    invoke-static {p0, v0, p1}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lastdelid"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static m0(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 4

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2
    array-length v0, p1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "picount"

    invoke-static {p0, v1, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 5
    aget-object v1, p1, v0

    const-string v2, "gH#Yu87&kHna%Oe3"

    invoke-static {v2, v1}, Lf8/g;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    .line 6
    invoke-static {v2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lf8/h;->o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static n(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "devshowpcode"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static n0(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2
    array-length v0, p1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "picount"

    invoke-static {p0, v1, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    const-string v1, "url"

    .line 5
    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-static {p0, v1, v2}, Lf8/h;->o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static o(Landroid/content/Context;)J
    .locals 2

    const-string v0, "gappupdatelaststart"

    .line 1
    invoke-static {p0, v0}, Lf8/h;->w(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ierror"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static p0(Landroid/content/Context;)V
    .locals 2

    const-string v0, "abmsuggest"

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "iurl"

    const-string v1, ""

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "gH#Yu87&kHna%Oe3"

    .line 2
    invoke-static {v0, p0}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q0(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "gappupdatelaststart"

    invoke-static {p0, v2, v0, v1}, Lf8/h;->k0(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static r0(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lf8/h;->b(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "bwlmultiselectenabled"

    invoke-static {p0, v1, v0}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static s(Landroid/content/Context;)J
    .locals 2

    const-string v0, "lastcalltime"

    .line 1
    invoke-static {p0, v0}, Lf8/h;->w(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static t(Landroid/content/Context;)J
    .locals 2

    const-string v0, "lastdbcheck"

    .line 1
    invoke-static {p0, v0}, Lf8/h;->w(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lastblid"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static v(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lastlid"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static w(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v0
.end method

.method public static x(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "needinitdb"

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pcode"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static z(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pierror"

    invoke-static {p0, v1, v0}, Lf8/h;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
