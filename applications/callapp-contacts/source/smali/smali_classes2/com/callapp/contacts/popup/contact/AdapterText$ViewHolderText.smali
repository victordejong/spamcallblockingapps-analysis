.class public Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/contact/AdapterText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewHolderText"
.end annotation


# instance fields
.field final c:Landroid/widget/TextView;

.field d:I


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;->c:Landroid/widget/TextView;

    return-void
.end method
