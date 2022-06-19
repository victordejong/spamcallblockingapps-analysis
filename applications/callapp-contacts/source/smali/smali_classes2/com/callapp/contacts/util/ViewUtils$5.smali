.class final Lcom/callapp/contacts/util/ViewUtils$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/callapp/contacts/util/ViewUtils$5;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/util/ViewUtils$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/callapp/contacts/util/ViewUtils$5;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callapp/contacts/util/ViewUtils$5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
