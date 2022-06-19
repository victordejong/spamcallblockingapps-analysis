.class final Lio/bidmachine/displays/a$a$1;
.super Lio/bidmachine/TrackingObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/displays/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field final synthetic this$0:Lio/bidmachine/displays/a$a;


# direct methods
.method constructor <init>(Lio/bidmachine/displays/a$a;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lio/bidmachine/displays/a$a$1;->this$0:Lio/bidmachine/displays/a$a;

    invoke-direct {p0}, Lio/bidmachine/TrackingObject;-><init>()V

    .line 192
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/displays/a$a$1;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getTrackingKey()Ljava/lang/Object;
    .locals 1

    .line 196
    iget-object v0, p0, Lio/bidmachine/displays/a$a$1;->key:Ljava/lang/String;

    return-object v0
.end method
