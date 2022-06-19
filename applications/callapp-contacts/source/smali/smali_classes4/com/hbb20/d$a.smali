.class final Lcom/hbb20/d$a;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hbb20/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field r:Landroid/widget/RelativeLayout;

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/TextView;

.field u:Landroid/widget/ImageView;

.field v:Landroid/widget/LinearLayout;

.field w:Landroid/view/View;

.field final synthetic x:Lcom/hbb20/d;


# direct methods
.method public constructor <init>(Lcom/hbb20/d;Landroid/view/View;)V
    .locals 2

    .line 219
    iput-object p1, p0, Lcom/hbb20/d$a;->x:Lcom/hbb20/d;

    .line 220
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 221
    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/hbb20/d$a;->r:Landroid/widget/RelativeLayout;

    .line 222
    sget v0, Lcom/hbb20/h$f;->textView_countryName:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hbb20/d$a;->s:Landroid/widget/TextView;

    .line 223
    iget-object p2, p0, Lcom/hbb20/d$a;->r:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hbb20/h$f;->textView_code:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hbb20/d$a;->t:Landroid/widget/TextView;

    .line 224
    iget-object p2, p0, Lcom/hbb20/d$a;->r:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hbb20/h$f;->image_flag:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/hbb20/d$a;->u:Landroid/widget/ImageView;

    .line 225
    iget-object p2, p0, Lcom/hbb20/d$a;->r:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hbb20/h$f;->linear_flag_holder:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/hbb20/d$a;->v:Landroid/widget/LinearLayout;

    .line 226
    iget-object p2, p0, Lcom/hbb20/d$a;->r:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hbb20/h$f;->preferenceDivider:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/hbb20/d$a;->w:Landroid/view/View;

    .line 228
    iget-object p2, p1, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    .line 2260
    iget p2, p2, Lcom/hbb20/CountryCodePicker;->aD:I

    if-eqz p2, :cond_0

    .line 229
    iget-object p2, p0, Lcom/hbb20/d$a;->s:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    .line 3260
    iget v0, v0, Lcom/hbb20/CountryCodePicker;->aD:I

    .line 229
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object p2, p0, Lcom/hbb20/d$a;->t:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    .line 4260
    iget v0, v0, Lcom/hbb20/CountryCodePicker;->aD:I

    .line 230
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    iget-object p2, p0, Lcom/hbb20/d$a;->w:Landroid/view/View;

    iget-object v0, p1, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    .line 5260
    iget v0, v0, Lcom/hbb20/CountryCodePicker;->aD:I

    .line 231
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 235
    :cond_0
    :try_start_0
    iget-object p2, p1, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    .line 5286
    iget-object p2, p2, Lcom/hbb20/CountryCodePicker;->W:Landroid/graphics/Typeface;

    if-eqz p2, :cond_2

    .line 236
    iget-object p2, p1, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    .line 6278
    iget p2, p2, Lcom/hbb20/CountryCodePicker;->aa:I

    const/16 v0, -0x63

    if-eq p2, v0, :cond_1

    .line 237
    iget-object p2, p0, Lcom/hbb20/d$a;->t:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    .line 6286
    iget-object v0, v0, Lcom/hbb20/CountryCodePicker;->W:Landroid/graphics/Typeface;

    .line 237
    iget-object v1, p1, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    .line 7278
    iget v1, v1, Lcom/hbb20/CountryCodePicker;->aa:I

    .line 237
    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 238
    iget-object p2, p0, Lcom/hbb20/d$a;->s:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    .line 7286
    iget-object v0, v0, Lcom/hbb20/CountryCodePicker;->W:Landroid/graphics/Typeface;

    .line 238
    iget-object p1, p1, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    .line 8278
    iget p1, p1, Lcom/hbb20/CountryCodePicker;->aa:I

    .line 238
    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    .line 240
    :cond_1
    iget-object p2, p0, Lcom/hbb20/d$a;->t:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    .line 8286
    iget-object v0, v0, Lcom/hbb20/CountryCodePicker;->W:Landroid/graphics/Typeface;

    .line 240
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 241
    iget-object p2, p0, Lcom/hbb20/d$a;->s:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    .line 9286
    iget-object p1, p1, Lcom/hbb20/CountryCodePicker;->W:Landroid/graphics/Typeface;

    .line 241
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 245
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
