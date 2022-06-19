.class public abstract Lcom/google/android/gms/internal/measurement/cl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/fs;


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/cl;->a:Z

    .line 3
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/cl;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/fs;
    .locals 2

    .prologue
    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "clone() should be implemented by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cl;->a()Lcom/google/android/gms/internal/measurement/fs;

    move-result-object v0

    return-object v0
.end method
