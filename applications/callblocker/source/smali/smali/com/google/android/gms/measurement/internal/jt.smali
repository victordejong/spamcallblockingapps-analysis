.class public final Lcom/google/android/gms/measurement/internal/jt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"


# instance fields
.field final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jt;->a:Landroid/content/Context;

    .line 6
    return-void
.end method
