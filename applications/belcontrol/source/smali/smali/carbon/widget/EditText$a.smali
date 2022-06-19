.class public Lcarbon/widget/EditText$a;
.super Lbd0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcarbon/widget/EditText;->q(Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcarbon/widget/EditText;


# direct methods
.method public constructor <init>(Lcarbon/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/EditText$a;->a:Lcarbon/widget/EditText;

    invoke-direct {p0}, Lbd0;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p1, p0, Lcarbon/widget/EditText$a;->a:Lcarbon/widget/EditText;

    invoke-static {p1}, Lcarbon/widget/EditText;->d(Lcarbon/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcarbon/widget/EditText$a;->a:Lcarbon/widget/EditText;

    invoke-static {p1}, Lcarbon/widget/EditText;->e(Lcarbon/widget/EditText;)V

    :cond_0
    return-void
.end method
