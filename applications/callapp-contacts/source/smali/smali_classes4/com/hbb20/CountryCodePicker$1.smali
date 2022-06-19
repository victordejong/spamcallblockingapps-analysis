.class final Lcom/hbb20/CountryCodePicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hbb20/CountryCodePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hbb20/CountryCodePicker;


# direct methods
.method constructor <init>(Lcom/hbb20/CountryCodePicker;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$1;->a:Lcom/hbb20/CountryCodePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$1;->a:Lcom/hbb20/CountryCodePicker;

    invoke-static {v0}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/CountryCodePicker;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 141
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker$1;->a:Lcom/hbb20/CountryCodePicker;

    .line 2440
    iget-boolean p1, p1, Lcom/hbb20/CountryCodePicker;->al:Z

    if-eqz p1, :cond_2

    .line 142
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker$1;->a:Lcom/hbb20/CountryCodePicker;

    iget-boolean p1, p1, Lcom/hbb20/CountryCodePicker;->N:Z

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker$1;->a:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hbb20/CountryCodePicker;->a(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker$1;->a:Lcom/hbb20/CountryCodePicker;

    const/4 v0, 0x0

    .line 3157
    invoke-virtual {p1, v0}, Lcom/hbb20/CountryCodePicker;->a(Ljava/lang/String;)V

    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$1;->a:Lcom/hbb20/CountryCodePicker;

    invoke-static {v0}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/CountryCodePicker;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    return-void
.end method
