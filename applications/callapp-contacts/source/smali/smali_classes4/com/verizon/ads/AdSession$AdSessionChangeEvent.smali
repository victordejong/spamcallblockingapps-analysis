.class public final Lcom/verizon/ads/AdSession$AdSessionChangeEvent;
.super Lcom/verizon/ads/AdSessionEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/AdSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdSessionChangeEvent"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field public final previousValue:Ljava/lang/Object;

.field public final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/verizon/ads/AdSession;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/verizon/ads/AdSessionEvent;-><init>(Lcom/verizon/ads/AdSession;)V

    .line 64
    iput-object p2, p0, Lcom/verizon/ads/AdSession$AdSessionChangeEvent;->key:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/verizon/ads/AdSession$AdSessionChangeEvent;->value:Ljava/lang/Object;

    .line 66
    iput-object p4, p0, Lcom/verizon/ads/AdSession$AdSessionChangeEvent;->previousValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdSessionChangeEvent{key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/verizon/ads/AdSession$AdSessionChangeEvent;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/verizon/ads/AdSession$AdSessionChangeEvent;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", previous value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/verizon/ads/AdSession$AdSessionChangeEvent;->previousValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
