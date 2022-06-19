.class public Lcom/allinone/callerid/util/gg/c;
.super Ljava/lang/Object;
.source "AdmobPDT.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/util/gg/c$c;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/allinone/callerid/util/gg/c;


# instance fields
.field private b:Lcom/google/android/gms/ads/nativead/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/util/gg/c;Lcom/google/android/gms/ads/nativead/a;)Lcom/google/android/gms/ads/nativead/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/c;->b:Lcom/google/android/gms/ads/nativead/a;

    return-object p1
.end method

.method public static c()Lcom/allinone/callerid/util/gg/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/gg/c;->a:Lcom/allinone/callerid/util/gg/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/allinone/callerid/util/gg/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/allinone/callerid/util/gg/c;->a:Lcom/allinone/callerid/util/gg/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/allinone/callerid/util/gg/c;

    invoke-direct {v1}, Lcom/allinone/callerid/util/gg/c;-><init>()V

    sput-object v1, Lcom/allinone/callerid/util/gg/c;->a:Lcom/allinone/callerid/util/gg/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/allinone/callerid/util/gg/c;->a:Lcom/allinone/callerid/util/gg/c;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/allinone/callerid/util/gg/c;->b:Lcom/google/android/gms/ads/nativead/a;

    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/util/gg/c$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/c;->b:Lcom/google/android/gms/ads/nativead/a;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3, v0}, Lcom/allinone/callerid/util/gg/c$c;->a(Lcom/google/android/gms/ads/nativead/a;)V

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 3
    new-instance v0, Lcom/google/android/gms/ads/d$a;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/allinone/callerid/util/gg/c$a;

    invoke-direct {p1, p0, p3}, Lcom/allinone/callerid/util/gg/c$a;-><init>(Lcom/allinone/callerid/util/gg/c;Lcom/allinone/callerid/util/gg/c$c;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/d$a;->c(Lcom/google/android/gms/ads/nativead/a$c;)Lcom/google/android/gms/ads/d$a;

    .line 5
    new-instance p1, Lcom/google/android/gms/ads/t$a;

    invoke-direct {p1}, Lcom/google/android/gms/ads/t$a;-><init>()V

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/t$a;->b(Z)Lcom/google/android/gms/ads/t$a;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/t$a;->a()Lcom/google/android/gms/ads/t;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/google/android/gms/ads/formats/c$a;

    invoke-direct {p2}, Lcom/google/android/gms/ads/formats/c$a;-><init>()V

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/formats/c$a;->h(Lcom/google/android/gms/ads/t;)Lcom/google/android/gms/ads/formats/c$a;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c$a;->a()Lcom/google/android/gms/ads/formats/c;

    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/d$a;->f(Lcom/google/android/gms/ads/formats/c;)Lcom/google/android/gms/ads/d$a;

    .line 12
    new-instance p1, Lcom/allinone/callerid/util/gg/c$b;

    invoke-direct {p1, p0, p3}, Lcom/allinone/callerid/util/gg/c$b;-><init>(Lcom/allinone/callerid/util/gg/c;Lcom/allinone/callerid/util/gg/c$c;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/d$a;->e(Lcom/google/android/gms/ads/b;)Lcom/google/android/gms/ads/d$a;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object p1

    .line 14
    new-instance p2, Lcom/google/android/gms/ads/e$a;

    invoke-direct {p2}, Lcom/google/android/gms/ads/e$a;-><init>()V

    const-class p3, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/ads/e$a;->b(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/e$a;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/d;->b(Lcom/google/android/gms/ads/e;)V

    :cond_1
    return-void
.end method
