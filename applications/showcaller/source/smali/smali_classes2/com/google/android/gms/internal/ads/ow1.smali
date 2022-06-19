.class public final Lcom/google/android/gms/internal/ads/ow1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gb0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static f(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgk;
    .locals 1

    const-string v0, "native"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfgk;->d:Lcom/google/android/gms/internal/ads/zzfgk;

    return-object p0

    :cond_0
    const-string v0, "javascript"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfgk;->e:Lcom/google/android/gms/internal/ads/zzfgk;

    return-object p0

    .line 5
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfgk;->f:Lcom/google/android/gms/internal/ads/zzfgk;

    return-object p0
.end method

.method private static g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgj;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x41cfa846

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x4e906dcd

    if-eq v0, v1, :cond_1

    const v1, 0x768243c0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "onePixel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "definedByJavascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "beginToRender"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_6

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfgj;->e:Lcom/google/android/gms/internal/ads/zzfgj;

    return-object p0

    .line 3
    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfgj;->h:Lcom/google/android/gms/internal/ads/zzfgj;

    return-object p0

    .line 4
    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfgj;->d:Lcom/google/android/gms/internal/ads/zzfgj;

    return-object p0

    .line 5
    :cond_6
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfgj;->g:Lcom/google/android/gms/internal/ads/zzfgj;

    return-object p0
.end method

.method private static h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgh;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x16d03d69

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x6b0147b

    if-eq v0, v1, :cond_1

    const v1, 0x2a9c68ab

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "nativeDisplay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "htmlDisplay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_6

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfgh;->g:Lcom/google/android/gms/internal/ads/zzfgh;

    return-object p0

    .line 3
    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfgh;->f:Lcom/google/android/gms/internal/ads/zzfgh;

    return-object p0

    .line 4
    :cond_6
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfgh;->e:Lcom/google/android/gms/internal/ads/zzfgh;

    return-object p0
.end method


# virtual methods
.method public final M(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->u3:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/ip2;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/kp2;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/kp2;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/kp2;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final U(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->u3:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Omid flag is disabled"

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/ip2;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ip2;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/ip2;->b()Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->u3:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "a.1.3.3-google_20200416"

    return-object p1
.end method

.method public final b(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzm;Lcom/google/android/gms/internal/ads/zzbzl;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;
    .locals 3

    .line 1
    sget-object p3, Lcom/google/android/gms/internal/ads/kw;->u3:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p3

    .line 3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/ads/ip2;->b()Z

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p3, "Google"

    .line 4
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/op2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/op2;

    move-result-object p1

    const-string p3, "javascript"

    .line 5
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/ow1;->f(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgk;

    move-result-object p3

    .line 6
    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzbzl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ow1;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgh;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgk;->f:Lcom/google/android/gms/internal/ads/zzfgk;

    if-ne p3, v1, :cond_1

    const-string p1, "Omid html session error; Unable to parse impression owner: javascript"

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 9
    invoke-static {p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    const-string p2, "Omid html session error; Unable to parse creative type: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/ow1;->f(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgk;

    move-result-object p7

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfgh;->g:Lcom/google/android/gms/internal/ads/zzfgh;

    if-ne v0, v2, :cond_4

    if-ne p7, v1, :cond_4

    .line 11
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Omid html session error; Video events owner unknown for video creative: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p4, ""

    .line 12
    invoke-static {p1, p2, p8, p4}, Lcom/google/android/gms/internal/ads/mp2;->a(Lcom/google/android/gms/internal/ads/op2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/mp2;

    move-result-object p1

    .line 13
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzbzm;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ow1;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgj;

    move-result-object p2

    const/4 p4, 0x1

    .line 14
    invoke-static {v0, p2, p3, p7, p4}, Lcom/google/android/gms/internal/ads/lp2;->a(Lcom/google/android/gms/internal/ads/zzfgh;Lcom/google/android/gms/internal/ads/zzfgj;Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzfgk;Z)Lcom/google/android/gms/internal/ads/lp2;

    move-result-object p2

    .line 15
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/kp2;->e(Lcom/google/android/gms/internal/ads/lp2;Lcom/google/android/gms/internal/ads/mp2;)Lcom/google/android/gms/internal/ads/kp2;

    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object p4

    :cond_5
    :goto_1
    return-object p4
.end method

.method public final c(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzm;Lcom/google/android/gms/internal/ads/zzbzl;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;
    .locals 2

    .line 1
    sget-object p3, Lcom/google/android/gms/internal/ads/kw;->u3:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p3

    .line 3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/ads/ip2;->b()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p6, p1}, Lcom/google/android/gms/internal/ads/op2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/op2;

    move-result-object p1

    const-string p3, "javascript"

    .line 5
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/ow1;->f(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgk;

    move-result-object p3

    .line 6
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/ow1;->f(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgk;

    move-result-object p6

    .line 7
    invoke-virtual {p8}, Lcom/google/android/gms/internal/ads/zzbzl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ow1;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgh;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgk;->f:Lcom/google/android/gms/internal/ads/zzfgk;

    if-ne p3, v1, :cond_1

    const-string p1, "Omid js session error; Unable to parse impression owner: javascript"

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-object p4

    :cond_1
    if-nez v0, :cond_2

    .line 10
    invoke-static {p8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    const-string p2, "Omid js session error; Unable to parse creative type: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-object p4

    :cond_2
    sget-object p8, Lcom/google/android/gms/internal/ads/zzfgh;->g:Lcom/google/android/gms/internal/ads/zzfgh;

    if-ne v0, p8, :cond_4

    if-ne p6, v1, :cond_4

    .line 11
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Omid js session error; Video events owner unknown for video creative: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-object p4

    :cond_4
    const-string p4, ""

    .line 12
    invoke-static {p1, p2, p9, p4}, Lcom/google/android/gms/internal/ads/mp2;->b(Lcom/google/android/gms/internal/ads/op2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/mp2;

    move-result-object p1

    .line 13
    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzbzm;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ow1;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgj;

    move-result-object p2

    const/4 p4, 0x1

    .line 14
    invoke-static {v0, p2, p3, p6, p4}, Lcom/google/android/gms/internal/ads/lp2;->a(Lcom/google/android/gms/internal/ads/zzfgh;Lcom/google/android/gms/internal/ads/zzfgj;Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzfgk;Z)Lcom/google/android/gms/internal/ads/lp2;

    move-result-object p2

    .line 15
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/kp2;->e(Lcom/google/android/gms/internal/ads/lp2;Lcom/google/android/gms/internal/ads/mp2;)Lcom/google/android/gms/internal/ads/kp2;

    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    return-object p4
.end method

.method public final d(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->u3:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/ip2;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/kp2;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/kp2;

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgi;->f:Lcom/google/android/gms/internal/ads/zzfgi;

    const-string v1, "Ad overlay"

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/kp2;->d(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfgi;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->u3:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/ip2;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/kp2;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/kp2;

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/kp2;->b(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->u3:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/ip2;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/kp2;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/kp2;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/kp2;->a()V

    :cond_1
    :goto_0
    return-void
.end method
