.class public final Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$i;
.super Ljava/lang/Object;
.source "SearchFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$i;->a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 208
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$i;->a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->c(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
