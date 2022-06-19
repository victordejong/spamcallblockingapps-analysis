.class public final Lio/bidmachine/Publisher$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/Publisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addCategories(Ljava/util/List;)Lio/bidmachine/Publisher$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/Publisher$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 80
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 83
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    invoke-virtual {p0, v0}, Lio/bidmachine/Publisher$Builder;->addCategory(Ljava/lang/String;)Lio/bidmachine/Publisher$Builder;

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public final addCategory(Ljava/lang/String;)Lio/bidmachine/Publisher$Builder;
    .locals 1

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 72
    :cond_0
    iget-object v0, p0, Lio/bidmachine/Publisher$Builder;->categories:Ljava/util/List;

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/Publisher$Builder;->categories:Ljava/util/List;

    .line 75
    :cond_1
    iget-object v0, p0, Lio/bidmachine/Publisher$Builder;->categories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Lio/bidmachine/Publisher;
    .locals 7

    .line 90
    new-instance v6, Lio/bidmachine/Publisher;

    iget-object v1, p0, Lio/bidmachine/Publisher$Builder;->id:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/Publisher$Builder;->name:Ljava/lang/String;

    iget-object v3, p0, Lio/bidmachine/Publisher$Builder;->domain:Ljava/lang/String;

    iget-object v4, p0, Lio/bidmachine/Publisher$Builder;->categories:Ljava/util/List;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/Publisher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/bidmachine/Publisher$1;)V

    return-object v6
.end method

.method public final setDomain(Ljava/lang/String;)Lio/bidmachine/Publisher$Builder;
    .locals 0

    .line 64
    iput-object p1, p0, Lio/bidmachine/Publisher$Builder;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lio/bidmachine/Publisher$Builder;
    .locals 0

    .line 54
    iput-object p1, p0, Lio/bidmachine/Publisher$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lio/bidmachine/Publisher$Builder;
    .locals 0

    .line 59
    iput-object p1, p0, Lio/bidmachine/Publisher$Builder;->name:Ljava/lang/String;

    return-object p0
.end method
