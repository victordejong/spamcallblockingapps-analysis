.class final Lcom/google/android/gms/internal/measurement/gu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/gt;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/ct;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ct;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/gu;->a:Lcom/google/android/gms/internal/measurement/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)B
    .locals 1

    .prologue
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gu;->a:Lcom/google/android/gms/internal/measurement/ct;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ct;->a(I)B

    move-result v0

    return v0
.end method

.method public final a()I
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gu;->a:Lcom/google/android/gms/internal/measurement/ct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ct;->a()I

    move-result v0

    return v0
.end method
