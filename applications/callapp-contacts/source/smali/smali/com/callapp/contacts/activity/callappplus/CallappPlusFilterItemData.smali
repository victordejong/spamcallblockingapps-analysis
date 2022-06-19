.class public Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p2, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;->a:Z

    .line 11
    iput p1, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;->b:I

    return-void
.end method


# virtual methods
.method public getTextResId()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;->b:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;->a:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;->a:Z

    return-void
.end method
