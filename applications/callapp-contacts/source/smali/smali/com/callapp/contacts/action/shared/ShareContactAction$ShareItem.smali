.class public Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/action/shared/ShareContactAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

    .line 518
    iput-object p2, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;->b:Ljava/lang/Object;

    .line 519
    iput-object p3, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;->c:Ljava/lang/String;

    return-object v0
.end method
