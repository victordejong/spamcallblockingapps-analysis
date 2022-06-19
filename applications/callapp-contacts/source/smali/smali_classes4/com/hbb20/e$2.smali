.class final Lcom/hbb20/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hbb20/e;->a(Lcom/hbb20/CountryCodePicker;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hbb20/CountryCodePicker;


# direct methods
.method constructor <init>(Lcom/hbb20/CountryCodePicker;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/hbb20/e$2;->a:Lcom/hbb20/CountryCodePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 218
    sget-object p1, Lcom/hbb20/e;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/hbb20/e;->a(Landroid/content/Context;)V

    .line 219
    iget-object p1, p0, Lcom/hbb20/e$2;->a:Lcom/hbb20/CountryCodePicker;

    .line 1615
    iget-object p1, p1, Lcom/hbb20/CountryCodePicker;->ay:Lcom/hbb20/CountryCodePicker$c;

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/hbb20/e$2;->a:Lcom/hbb20/CountryCodePicker;

    .line 2615
    iget-object p1, p1, Lcom/hbb20/CountryCodePicker;->ay:Lcom/hbb20/CountryCodePicker$c;

    .line 220
    invoke-interface {p1}, Lcom/hbb20/CountryCodePicker$c;->a()V

    :cond_0
    return-void
.end method
