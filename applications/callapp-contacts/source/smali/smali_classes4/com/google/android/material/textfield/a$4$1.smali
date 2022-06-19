.class final Lcom/google/android/material/textfield/a$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/a$4;->a(Lcom/google/android/material/textfield/TextInputLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/google/android/material/textfield/a$4;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/a$4;Landroid/widget/EditText;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/google/android/material/textfield/a$4$1;->b:Lcom/google/android/material/textfield/a$4;

    iput-object p2, p0, Lcom/google/android/material/textfield/a$4$1;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/google/android/material/textfield/a$4$1;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/textfield/a$4$1;->b:Lcom/google/android/material/textfield/a$4;

    iget-object v1, v1, Lcom/google/android/material/textfield/a$4;->a:Lcom/google/android/material/textfield/a;

    .line 1040
    iget-object v1, v1, Lcom/google/android/material/textfield/a;->a:Landroid/text/TextWatcher;

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
