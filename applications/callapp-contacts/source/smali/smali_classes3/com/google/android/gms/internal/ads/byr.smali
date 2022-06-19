.class final synthetic Lcom/google/android/gms/internal/ads/byr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/byp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/byp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/byr;->a:Lcom/google/android/gms/internal/ads/byp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byr;->a:Lcom/google/android/gms/internal/ads/byp;

    .line 1107
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/byp;->a()V

    return-void
.end method
