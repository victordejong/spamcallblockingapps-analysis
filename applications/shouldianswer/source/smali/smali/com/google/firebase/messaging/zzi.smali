.class final synthetic Lcom/google/firebase/messaging/zzi;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@20.0.1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/firebase/messaging/zzj;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/zzj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/zzi;->zza:Lcom/google/firebase/messaging/zzj;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzi;->zza:Lcom/google/firebase/messaging/zzj;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/zzj;->zzb()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
