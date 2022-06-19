.class public Lcom/explorestack/iab/vast/VastRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/VastRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/vast/VastRequest;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/iab/vast/VastRequest;->addExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/explorestack/iab/vast/VastRequest;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    return-object v0
.end method

.method public forceUseNativeCloseTime(Z)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->access$402(Lcom/explorestack/iab/vast/VastRequest;Z)Z

    return-object p0
.end method

.method public setAutoClose(Z)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->access$702(Lcom/explorestack/iab/vast/VastRequest;Z)Z

    return-object p0
.end method

.method public setCompanionCloseTime(I)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->access$302(Lcom/explorestack/iab/vast/VastRequest;F)F

    return-object p0
.end method

.method public setMaxDuration(I)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->access$502(Lcom/explorestack/iab/vast/VastRequest;I)I

    return-object p0
.end method

.method public setMediaFilePicker(Lcom/explorestack/iab/vast/processor/VastMediaPicker;)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/iab/vast/processor/VastMediaPicker<",
            "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
            ">;)",
            "Lcom/explorestack/iab/vast/VastRequest$Builder;"
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->access$1102(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/VastMediaPicker;)Lcom/explorestack/iab/vast/processor/VastMediaPicker;

    return-object p0
.end method

.method public setPreCache(Z)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->access$602(Lcom/explorestack/iab/vast/VastRequest;Z)Z

    return-object p0
.end method

.method public setPreloadCompanion(Z)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->access$1002(Lcom/explorestack/iab/vast/VastRequest;Z)Z

    return-object p0
.end method

.method public setUseScreenSizeForCompanionOrientation(Z)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->access$902(Lcom/explorestack/iab/vast/VastRequest;Z)Z

    return-object p0
.end method

.method public setUseScreenSizeForVideoOrientation(Z)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->access$802(Lcom/explorestack/iab/vast/VastRequest;Z)Z

    return-object p0
.end method

.method public setVideoCloseTime(I)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->access$202(Lcom/explorestack/iab/vast/VastRequest;F)F

    return-object p0
.end method

.method public setXmlUrl(Ljava/lang/String;)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->access$102(Lcom/explorestack/iab/vast/VastRequest;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
