.class Lcom/callapp/contacts/behavior/ScrollAwareFABBehavior$1;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/behavior/ScrollAwareFABBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field final synthetic b:Lcom/callapp/contacts/behavior/ScrollAwareFABBehavior;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/behavior/ScrollAwareFABBehavior;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/callapp/contacts/behavior/ScrollAwareFABBehavior$1;->b:Lcom/callapp/contacts/behavior/ScrollAwareFABBehavior;

    iput-object p2, p0, Lcom/callapp/contacts/behavior/ScrollAwareFABBehavior$1;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;->a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method public final b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;->b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 42
    iget-object p1, p0, Lcom/callapp/contacts/behavior/ScrollAwareFABBehavior$1;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    return-void
.end method
