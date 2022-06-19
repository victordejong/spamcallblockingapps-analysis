.class public final Lcom/facebook/ads/redexgen/X/BJ;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/W0;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Landroid/media/AudioTrack;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/W0;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/BJ;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/W0;Landroid/media/AudioTrack;)V
    .locals 0

    .line 23011
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BJ;->A01:Lcom/facebook/ads/redexgen/X/W0;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/BJ;->A00:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SkEUgxpoRcioEqJDHDhbxpiMdxM0UOYk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1RFK8chiBFl4VC1Jj6NEodT1YKRRV0Tc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3So9twfxqNKUmt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HSCpT7tF1ShrrXybxUkhVxLZ9B45h7M1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cQ0vrteKbSCLOiX8jnlFFjgQ05rRxmaA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7sr1zjSMCn77Y8fDmKft1rN3c164nEJk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "aTBEc6uAmEhxU3fqfZxDvGJFneP2w88q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KJtPqysSlU74ejEi1lQ7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BJ;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 23012
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BJ;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/BJ;->A00:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 23013
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/BJ;->A00:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23014
    :try_start_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/BJ;->A01:Lcom/facebook/ads/redexgen/X/W0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W0;->A0G(Lcom/facebook/ads/redexgen/X/W0;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 23015
    return-void

    .line 23016
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/BJ;
    :catchall_0
    move-exception v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/BJ;->A01:Lcom/facebook/ads/redexgen/X/W0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W0;->A0G(Lcom/facebook/ads/redexgen/X/W0;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 23017
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23018
    :catchall_1
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/BJ;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/BJ;->A02:[Ljava/lang/String;

    const-string v1, "xQWQD9bkRGNEnWJ9hb69HfYcRPzOiatB"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
