.class public Lcarbon/widget/EditText$c;
.super Ln8$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcarbon/widget/EditText;->n(Landroid/content/res/TypedArray;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:Ljava/lang/ref/WeakReference;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lcarbon/widget/EditText;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/ref/WeakReference;I)V
    .locals 0

    iput-object p2, p0, Lcarbon/widget/EditText$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcarbon/widget/EditText$c;->b:Ljava/lang/ref/WeakReference;

    iput p4, p0, Lcarbon/widget/EditText$c;->c:I

    invoke-direct {p0}, Ln8$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .locals 0

    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/EditText$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/EditText$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcarbon/widget/EditText$c;->c:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method
