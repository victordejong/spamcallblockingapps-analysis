.class final Lcom/google/android/material/textfield/d$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/textfield/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/d;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/google/android/material/textfield/d$7;->a:Lcom/google/android/material/textfield/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 252
    iget-object p1, p0, Lcom/google/android/material/textfield/d$7;->a:Lcom/google/android/material/textfield/d;

    iget-object p1, p1, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2537
    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 252
    check-cast p1, Landroid/widget/AutoCompleteTextView;

    .line 253
    iget-object v0, p0, Lcom/google/android/material/textfield/d$7;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method
