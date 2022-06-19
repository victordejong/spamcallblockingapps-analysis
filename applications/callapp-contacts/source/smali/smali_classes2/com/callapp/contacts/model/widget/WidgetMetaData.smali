.class public Lcom/callapp/contacts/model/widget/WidgetMetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final backgroundColorRes:I

.field public final groupId:I

.field public final key:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public final menuResId:I

.field public final primaryIconResId:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p5, p0, Lcom/callapp/contacts/model/widget/WidgetMetaData;->key:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/callapp/contacts/model/widget/WidgetMetaData;->primaryIconResId:I

    .line 16
    iput p3, p0, Lcom/callapp/contacts/model/widget/WidgetMetaData;->menuResId:I

    .line 17
    iput-object p4, p0, Lcom/callapp/contacts/model/widget/WidgetMetaData;->label:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/callapp/contacts/model/widget/WidgetMetaData;->backgroundColorRes:I

    goto :goto_0

    .line 21
    :cond_0
    iput p1, p0, Lcom/callapp/contacts/model/widget/WidgetMetaData;->backgroundColorRes:I

    .line 23
    :goto_0
    iput p6, p0, Lcom/callapp/contacts/model/widget/WidgetMetaData;->groupId:I

    return-void
.end method
