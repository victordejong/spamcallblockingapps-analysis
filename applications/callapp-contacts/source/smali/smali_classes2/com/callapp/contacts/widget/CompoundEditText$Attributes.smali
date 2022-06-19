.class Lcom/callapp/contacts/widget/CompoundEditText$Attributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/CompoundEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Attributes"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/CompoundEditText;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/widget/CompoundEditText;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText$Attributes;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText$Attributes;->c:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/widget/CompoundEditText;Lcom/callapp/contacts/widget/CompoundEditText$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/CompoundEditText$Attributes;-><init>(Lcom/callapp/contacts/widget/CompoundEditText;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/CompoundEditText$Attributes;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText$Attributes;->c:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/CompoundEditText$Attributes;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/callapp/contacts/widget/CompoundEditText$Attributes;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/CompoundEditText$Attributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText$Attributes;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/CompoundEditText$Attributes;)Ljava/lang/Integer;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/callapp/contacts/widget/CompoundEditText$Attributes;->c:Ljava/lang/Integer;

    return-object p0
.end method
