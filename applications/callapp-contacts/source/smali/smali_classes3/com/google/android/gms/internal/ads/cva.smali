.class final synthetic Lcom/google/android/gms/internal/ads/cva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cva;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cva;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cuy;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ehq;

    move-result-object v0

    return-object v0
.end method
