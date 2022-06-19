.class public Lio/bidmachine/ExtraParams;
.super Lio/bidmachine/models/RequestParams;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/models/IExtraParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/models/RequestParams<",
        "Lio/bidmachine/ExtraParams;",
        ">;",
        "Lio/bidmachine/models/IExtraParams<",
        "Lio/bidmachine/ExtraParams;",
        ">;"
    }
.end annotation


# instance fields
.field private extrasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lio/bidmachine/models/RequestParams;-><init>()V

    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/ExtraParams;
    .locals 1

    .line 21
    iget-object v0, p0, Lio/bidmachine/ExtraParams;->extrasMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/ExtraParams;->extrasMap:Ljava/util/Map;

    .line 24
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ExtraParams;->extrasMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic addExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ExtraParams;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/ExtraParams;

    move-result-object p1

    return-object p1
.end method

.method getExtrasMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lio/bidmachine/ExtraParams;->extrasMap:Ljava/util/Map;

    return-object v0
.end method

.method public merge(Lio/bidmachine/ExtraParams;)V
    .locals 2

    .line 30
    iget-object v0, p1, Lio/bidmachine/ExtraParams;->extrasMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 31
    iget-object v1, p0, Lio/bidmachine/ExtraParams;->extrasMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 32
    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lio/bidmachine/ExtraParams;->extrasMap:Ljava/util/Map;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lio/bidmachine/ExtraParams;->extrasMap:Ljava/util/Map;

    return-void

    .line 34
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic merge(Lio/bidmachine/models/RequestParams;)V
    .locals 0

    .line 11
    check-cast p1, Lio/bidmachine/ExtraParams;

    invoke-virtual {p0, p1}, Lio/bidmachine/ExtraParams;->merge(Lio/bidmachine/ExtraParams;)V

    return-void
.end method
