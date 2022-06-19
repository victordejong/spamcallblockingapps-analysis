.class public Lio/bidmachine/Publisher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/Publisher$Builder;
    }
.end annotation


# instance fields
.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private domain:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/bidmachine/Publisher;->id:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lio/bidmachine/Publisher;->name:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lio/bidmachine/Publisher;->domain:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lio/bidmachine/Publisher;->categories:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/bidmachine/Publisher$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/Publisher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method build(Lcom/explorestack/protobuf/adcom/Context$App$Builder;)V
    .locals 2

    .line 30
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lio/bidmachine/Publisher;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    .line 34
    :cond_0
    iget-object v1, p0, Lio/bidmachine/Publisher;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->setName(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    .line 37
    :cond_1
    iget-object v1, p0, Lio/bidmachine/Publisher;->domain:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 38
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->setDomain(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    .line 40
    :cond_2
    iget-object v1, p0, Lio/bidmachine/Publisher;->categories:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 41
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->addAllCat(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    .line 43
    :cond_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setPub(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    return-void
.end method
