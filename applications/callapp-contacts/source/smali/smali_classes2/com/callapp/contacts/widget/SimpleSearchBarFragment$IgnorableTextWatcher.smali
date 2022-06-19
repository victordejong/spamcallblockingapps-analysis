.class abstract Lcom/callapp/contacts/widget/SimpleSearchBarFragment$IgnorableTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/SimpleSearchBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "IgnorableTextWatcher"
.end annotation


# instance fields
.field b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)V
    .locals 1

    .line 114
    iput-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$IgnorableTextWatcher;->c:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance p1, Ljava/util/HashSet;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$IgnorableTextWatcher;->b:Ljava/util/HashSet;

    return-void
.end method
