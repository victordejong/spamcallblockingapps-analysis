.class public Lcom/mopub/mobileads/VastTracker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastTracker$Builder;,
        Lcom/mopub/mobileads/VastTracker$MessageType;,
        Lcom/mopub/mobileads/VastTracker$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/mopub/mobileads/VastTracker$Companion;

.field private static final serialVersionUID:J = 0x3L


# instance fields
.field public a:Z

.field public final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field public final c:Lcom/mopub/mobileads/VastTracker$MessageType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message_type"
    .end annotation
.end field

.field public final d:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_repeatable"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mopub/mobileads/VastTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastTracker$Companion;-><init>(Lok1;)V

    sput-object v0, Lcom/mopub/mobileads/VastTracker;->Companion:Lcom/mopub/mobileads/VastTracker$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mopub/mobileads/VastTracker$MessageType;Z)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageType"

    invoke-static {p2, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/VastTracker;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/mobileads/VastTracker;->c:Lcom/mopub/mobileads/VastTracker$MessageType;

    iput-boolean p3, p0, Lcom/mopub/mobileads/VastTracker;->d:Z

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastTracker;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessageType()Lcom/mopub/mobileads/VastTracker$MessageType;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastTracker;->c:Lcom/mopub/mobileads/VastTracker$MessageType;

    return-object v0
.end method

.method public final isRepeatable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/mobileads/VastTracker;->d:Z

    return v0
.end method

.method public final isTracked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/mobileads/VastTracker;->a:Z

    return v0
.end method

.method public final setTracked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastTracker;->a:Z

    return-void
.end method
