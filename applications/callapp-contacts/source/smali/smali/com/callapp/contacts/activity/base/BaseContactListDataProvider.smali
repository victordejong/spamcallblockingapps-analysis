.class public abstract Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/base/BaseContactListDataProvider$OnDataChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/activity/base/BaseContactListDataProvider$OnDataChangedListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;->a:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;)Ljava/util/Set;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;->a:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;)Ljava/util/List;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;->b:Ljava/util/List;

    return-object v0
.end method

.method public abstract getNewData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method
