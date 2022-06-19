.class public Lcom/callerid/block/util/v0/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/util/v0/d$c;
    }
.end annotation


# static fields
.field private static a:Lcom/callerid/block/util/v0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callerid/block/util/v0/d;

    invoke-direct {v0}, Lcom/callerid/block/util/v0/d;-><init>()V

    sput-object v0, Lcom/callerid/block/util/v0/d;->a:Lcom/callerid/block/util/v0/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/callerid/block/util/v0/d;
    .locals 1

    sget-object v0, Lcom/callerid/block/util/v0/d;->a:Lcom/callerid/block/util/v0/d;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/util/v0/d$c;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/d$a;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/callerid/block/util/v0/d$a;

    invoke-direct {p1, p0, p3}, Lcom/callerid/block/util/v0/d$a;-><init>(Lcom/callerid/block/util/v0/d;Lcom/callerid/block/util/v0/d$c;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/d$a;->c(Lcom/google/android/gms/ads/nativead/a$c;)Lcom/google/android/gms/ads/d$a;

    new-instance p1, Lcom/google/android/gms/ads/s$a;

    invoke-direct {p1}, Lcom/google/android/gms/ads/s$a;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/s$a;->b(Z)Lcom/google/android/gms/ads/s$a;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/s$a;->a()Lcom/google/android/gms/ads/s;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/ads/nativead/b$a;

    invoke-direct {p2}, Lcom/google/android/gms/ads/nativead/b$a;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/nativead/b$a;->g(Lcom/google/android/gms/ads/s;)Lcom/google/android/gms/ads/nativead/b$a;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/nativead/b$a;->a()Lcom/google/android/gms/ads/nativead/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/d$a;->g(Lcom/google/android/gms/ads/nativead/b;)Lcom/google/android/gms/ads/d$a;

    new-instance p1, Lcom/callerid/block/util/v0/d$b;

    invoke-direct {p1, p0, p3}, Lcom/callerid/block/util/v0/d$b;-><init>(Lcom/callerid/block/util/v0/d;Lcom/callerid/block/util/v0/d$c;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/d$a;->e(Lcom/google/android/gms/ads/b;)Lcom/google/android/gms/ads/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/ads/e$a;

    invoke-direct {p2}, Lcom/google/android/gms/ads/e$a;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/d;->a(Lcom/google/android/gms/ads/e;)V

    :cond_0
    return-void
.end method
