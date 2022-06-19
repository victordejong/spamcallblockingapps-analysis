.class public Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/base/BaseCallAppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyViewData"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/CharSequence;

.field private final c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1

    const-string v0, ""

    .line 470
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;->a:I

    .line 465
    iput-object p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;->b:Ljava/lang/CharSequence;

    .line 466
    iput-object p3, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;)Ljava/lang/CharSequence;
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;)Ljava/lang/CharSequence;
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;)I
    .locals 0

    .line 457
    iget p0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;->a:I

    return p0
.end method
