.class public abstract Lcom/google/android/gms/internal/measurement/ed$d;
.super Lcom/google/android/gms/internal/measurement/ed;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/fp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/ed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/ed$d",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/ed",
        "<TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/measurement/dw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/dw",
            "<",
            "Lcom/google/android/gms/internal/measurement/ed$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ed;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/dw;->a()Lcom/google/android/gms/internal/measurement/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ed$d;->zzc:Lcom/google/android/gms/internal/measurement/dw;

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/measurement/dw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/dw",
            "<",
            "Lcom/google/android/gms/internal/measurement/ed$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ed$d;->zzc:Lcom/google/android/gms/internal/measurement/dw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dw;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ed$d;->zzc:Lcom/google/android/gms/internal/measurement/dw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/dw;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ed$d;->zzc:Lcom/google/android/gms/internal/measurement/dw;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ed$d;->zzc:Lcom/google/android/gms/internal/measurement/dw;

    return-object v0
.end method
