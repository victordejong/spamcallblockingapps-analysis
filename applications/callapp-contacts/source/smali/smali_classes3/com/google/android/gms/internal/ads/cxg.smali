.class public Lcom/google/android/gms/internal/ads/cxg;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static zzhyh:Lcom/google/android/gms/internal/ads/cxj;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/cxg;->zzb(Landroid/os/Message;)V

    return-void
.end method

.method public zzb(Landroid/os/Message;)V
    .locals 0

    .line 7
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
