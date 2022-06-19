.class public final Lcom/google/android/gms/internal/ads/jn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/wj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/wj",
            "<",
            "Lcom/google/android/gms/internal/ads/hp;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/android/gms/internal/ads/wj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/wj",
            "<",
            "Lcom/google/android/gms/internal/ads/hp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/id;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/jm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/jn;->a:Lcom/google/android/gms/internal/ads/wj;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/jp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/jn;->b:Lcom/google/android/gms/internal/ads/wj;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/id;

    sget-object v4, Lcom/google/android/gms/internal/ads/jn;->a:Lcom/google/android/gms/internal/ads/wj;

    sget-object v5, Lcom/google/android/gms/internal/ads/jn;->b:Lcom/google/android/gms/internal/ads/wj;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/id;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/wj;Lcom/google/android/gms/internal/ads/wj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jn;->c:Lcom/google/android/gms/internal/ads/id;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/jh;)Lcom/google/android/gms/internal/ads/jf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/jg",
            "<TI;>;",
            "Lcom/google/android/gms/internal/ads/jh",
            "<TO;>;)",
            "Lcom/google/android/gms/internal/ads/jf",
            "<TI;TO;>;"
        }
    .end annotation

    .prologue
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/jo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jn;->c:Lcom/google/android/gms/internal/ads/id;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/jo;-><init>(Lcom/google/android/gms/internal/ads/id;Ljava/lang/String;Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/jh;)V

    return-object v0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/js;
    .locals 2

    .prologue
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/js;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jn;->c:Lcom/google/android/gms/internal/ads/id;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/js;-><init>(Lcom/google/android/gms/internal/ads/id;)V

    return-object v0
.end method
