.class Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArrangementChangeRequest"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;

.field private final b:Landroid/os/Bundle;

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;Ljava/lang/Class;Landroid/os/Bundle;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    .line 677
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;->c:Ljava/lang/Class;

    .line 679
    iput-object p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;->b:Landroid/os/Bundle;

    .line 680
    iput-boolean p4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;->d:Z

    return-void
.end method


# virtual methods
.method public getArrangement()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;",
            ">;"
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method public isAnimated()Z
    .locals 1

    .line 692
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest;->d:Z

    return v0
.end method
