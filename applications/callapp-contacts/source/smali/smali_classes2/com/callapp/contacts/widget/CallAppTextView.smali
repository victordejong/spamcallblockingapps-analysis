.class public Lcom/callapp/contacts/widget/CallAppTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/CallAppTextView$onSizeChanged;
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/widget/CallAppTextView$onSizeChanged;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->onSizeChanged(IIII)V

    return-void
.end method

.method public setOnSizeChangedListener(Lcom/callapp/contacts/widget/CallAppTextView$onSizeChanged;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/callapp/contacts/widget/CallAppTextView;->a:Lcom/callapp/contacts/widget/CallAppTextView$onSizeChanged;

    return-void
.end method
