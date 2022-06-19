.class final Lio/bidmachine/f$a$1;
.super Lio/bidmachine/TrackingObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/f$a;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/f$a;


# direct methods
.method constructor <init>(Lio/bidmachine/f$a;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lio/bidmachine/f$a$1;->this$0:Lio/bidmachine/f$a;

    invoke-direct {p0}, Lio/bidmachine/TrackingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTrackingKey()Ljava/lang/Object;
    .locals 2

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/bidmachine/f$a$1;->this$0:Lio/bidmachine/f$a;

    invoke-static {v1}, Lio/bidmachine/f$a;->access$100(Lio/bidmachine/f$a;)Lio/bidmachine/NetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/NetworkConfig;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_initialize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
