.class public final Lcom/google/android/gms/internal/ads/tz0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/vh;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdww;
    .locals 1

    const-string v0, "native"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzdww;->b:Lcom/google/android/gms/internal/ads/zzdww;

    return-object p0

    :cond_0
    const-string v0, "javascript"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzdww;->c:Lcom/google/android/gms/internal/ads/zzdww;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdww;->d:Lcom/google/android/gms/internal/ads/zzdww;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdwv;
    .locals 4

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

    sget-object p0, Lcom/google/android/gms/internal/ads/zzdwv;->c:Lcom/google/android/gms/internal/ads/zzdwv;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdwv;->f:Lcom/google/android/gms/internal/ads/zzdwv;

    return-object p0

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdwv;->b:Lcom/google/android/gms/internal/ads/zzdwv;

    return-object p0

    :cond_6
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdwv;->e:Lcom/google/android/gms/internal/ads/zzdwv;

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdwt;
    .locals 4

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

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdwt;->e:Lcom/google/android/gms/internal/ads/zzdwt;

    return-object p0

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdwt;->d:Lcom/google/android/gms/internal/ads/zzdwt;

    return-object p0

    :cond_6
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdwt;->c:Lcom/google/android/gms/internal/ads/zzdwt;

    return-object p0
.end method


# virtual methods
.method public final A0(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->R2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zq1;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/br1;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/br1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/br1;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final B0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauh;Lcom/google/android/gms/internal/ads/zzaug;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;
    .locals 2

    sget-object p3, Lcom/google/android/gms/internal/ads/m3;->R2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zq1;->b()Z

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p6, p1}, Lcom/google/android/gms/internal/ads/fr1;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/fr1;

    move-result-object p1

    const-string p3, "javascript"

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/tz0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdww;

    move-result-object p3

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/tz0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdww;

    move-result-object p6

    invoke-virtual {p8}, Lcom/google/android/gms/internal/ads/zzaug;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tz0;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdwt;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdww;->d:Lcom/google/android/gms/internal/ads/zzdww;

    if-ne p3, v1, :cond_1

    const-string p1, "Omid js session error; Unable to parse impression owner: javascript"

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    return-object p4

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x36

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Omid js session error; Unable to parse creative type: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p8, Lcom/google/android/gms/internal/ads/zzdwt;->e:Lcom/google/android/gms/internal/ads/zzdwt;

    if-ne v0, p8, :cond_4

    if-ne p6, v1, :cond_4

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Omid js session error; Video events owner unknown for video creative: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    return-object p4

    :cond_4
    const-string p4, ""

    invoke-static {p1, p2, p9, p4}, Lcom/google/android/gms/internal/ads/dr1;->c(Lcom/google/android/gms/internal/ads/fr1;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dr1;

    move-result-object p1

    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzauh;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/tz0;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdwv;

    move-result-object p2

    const/4 p4, 0x1

    invoke-static {v0, p2, p3, p6, p4}, Lcom/google/android/gms/internal/ads/cr1;->a(Lcom/google/android/gms/internal/ads/zzdwt;Lcom/google/android/gms/internal/ads/zzdwv;Lcom/google/android/gms/internal/ads/zzdww;Lcom/google/android/gms/internal/ads/zzdww;Z)Lcom/google/android/gms/internal/ads/cr1;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/br1;->f(Lcom/google/android/gms/internal/ads/cr1;Lcom/google/android/gms/internal/ads/dr1;)Lcom/google/android/gms/internal/ads/br1;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    return-object p4
.end method

.method public final C0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauh;Lcom/google/android/gms/internal/ads/zzaug;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;
    .locals 3

    sget-object p3, Lcom/google/android/gms/internal/ads/m3;->R2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zq1;->b()Z

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p3, "Google"

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/fr1;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/fr1;

    move-result-object p1

    const-string p3, "javascript"

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/tz0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdww;

    move-result-object p3

    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzaug;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/tz0;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdwt;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdww;->d:Lcom/google/android/gms/internal/ads/zzdww;

    if-ne p3, v1, :cond_1

    const-string p1, "Omid html session error; Unable to parse impression owner: javascript"

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x38

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Omid html session error; Unable to parse creative type: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/tz0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdww;

    move-result-object p7

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdwt;->e:Lcom/google/android/gms/internal/ads/zzdwt;

    if-ne v0, v2, :cond_4

    if-ne p7, v1, :cond_4

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

    goto :goto_0

    :cond_4
    const-string p4, ""

    invoke-static {p1, p2, p8, p4}, Lcom/google/android/gms/internal/ads/dr1;->b(Lcom/google/android/gms/internal/ads/fr1;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dr1;

    move-result-object p1

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzauh;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/tz0;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdwv;

    move-result-object p2

    const/4 p4, 0x1

    invoke-static {v0, p2, p3, p7, p4}, Lcom/google/android/gms/internal/ads/cr1;->a(Lcom/google/android/gms/internal/ads/zzdwt;Lcom/google/android/gms/internal/ads/zzdwv;Lcom/google/android/gms/internal/ads/zzdww;Lcom/google/android/gms/internal/ads/zzdww;Z)Lcom/google/android/gms/internal/ads/cr1;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/br1;->f(Lcom/google/android/gms/internal/ads/cr1;Lcom/google/android/gms/internal/ads/dr1;)Lcom/google/android/gms/internal/ads/br1;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object p4

    :cond_5
    :goto_1
    return-object p4
.end method

.method public final D0(Landroid/content/Context;)Z
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->R2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Omid flag is disabled"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zq1;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->T2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zq1;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zq1;->b()Z

    move-result p1

    return p1

    :cond_2
    const-string v0, "1.3.3-google_20200416"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zq1;->c(Ljava/lang/String;Landroid/content/Context;)Z

    return v1
.end method

.method public final E0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;
    .locals 7

    const-string v3, ""

    const-string v4, "javascript"

    const-string v6, "Google"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/tz0;->G0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    return-object p1
.end method

.method public final F0(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->R2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zq1;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/br1;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/ads/br1;

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->W2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdwu;->d:Lcom/google/android/gms/internal/ads/zzdwu;

    const-string v1, "Ad overlay"

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/br1;->d(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzdwu;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/br1;->e(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final G0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;
    .locals 0

    sget-object p3, Lcom/google/android/gms/internal/ads/m3;->R2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zq1;->b()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p6, p1}, Lcom/google/android/gms/internal/ads/fr1;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/fr1;

    move-result-object p1

    const-string p3, "javascript"

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/tz0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdww;

    move-result-object p3

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/tz0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdww;

    move-result-object p5

    sget-object p6, Lcom/google/android/gms/internal/ads/zzdww;->d:Lcom/google/android/gms/internal/ads/zzdww;

    if-ne p3, p6, :cond_1

    return-object p4

    :cond_1
    const-string p4, ""

    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/ads/dr1;->a(Lcom/google/android/gms/internal/ads/fr1;Landroid/webkit/WebView;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dr1;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p3, p5, p2}, Lcom/google/android/gms/internal/ads/cr1;->b(Lcom/google/android/gms/internal/ads/zzdww;Lcom/google/android/gms/internal/ads/zzdww;Z)Lcom/google/android/gms/internal/ads/cr1;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/br1;->f(Lcom/google/android/gms/internal/ads/cr1;Lcom/google/android/gms/internal/ads/dr1;)Lcom/google/android/gms/internal/ads/br1;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object p4
.end method

.method public final H0(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->R2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zq1;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/br1;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/br1;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/br1;->b(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final M(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->R2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zq1;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/br1;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/br1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/br1;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final N(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object p1, Lcom/google/android/gms/internal/ads/m3;->R2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p1

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
