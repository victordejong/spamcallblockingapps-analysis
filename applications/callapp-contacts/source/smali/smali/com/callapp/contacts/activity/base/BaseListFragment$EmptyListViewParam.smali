.class public final Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/base/BaseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "EmptyListViewParam"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseListFragment;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/base/BaseListFragment;III)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;->a:Lcom/callapp/contacts/activity/base/BaseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput p3, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;->c:I

    .line 302
    iput p2, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;->b:I

    .line 303
    iput p4, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;->d:I

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;)I
    .locals 0

    .line 295
    iget p0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;->b:I

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;)I
    .locals 0

    .line 295
    iget p0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;->c:I

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;)I
    .locals 0

    .line 295
    iget p0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;->d:I

    return p0
.end method
