.class final Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/ActionSelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewHolder"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/popup/ActionSelectAdapter$1;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;->a:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/popup/ActionSelectAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    return-object p0
.end method
