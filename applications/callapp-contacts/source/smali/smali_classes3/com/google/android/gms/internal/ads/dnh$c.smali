.class public abstract Lcom/google/android/gms/internal/ads/dnh$c;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dnh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/dnh$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/dnh<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# instance fields
.field protected zzitu:Lcom/google/android/gms/internal/ads/dmz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dmz<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmz;->a()Lcom/google/android/gms/internal/ads/dmz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dnh$c;->zzitu:Lcom/google/android/gms/internal/ads/dmz;

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/ads/dmz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dmz<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnh$c;->zzitu:Lcom/google/android/gms/internal/ads/dmz;

    .line 1017
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dmz;->b:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnh$c;->zzitu:Lcom/google/android/gms/internal/ads/dmz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dmz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dnh$c;->zzitu:Lcom/google/android/gms/internal/ads/dmz;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnh$c;->zzitu:Lcom/google/android/gms/internal/ads/dmz;

    return-object v0
.end method
