.class public Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Li91;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ";;"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object p1

    iput-object p1, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;->b:Li91;

    invoke-virtual {p1}, Li91;->m()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;->a:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p2, p1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p2, p1, p2

    iput-object p2, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;->a:Ljava/lang/String;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p1}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object p1

    iput-object p1, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;->b:Li91;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "."

    return-object v0
.end method
