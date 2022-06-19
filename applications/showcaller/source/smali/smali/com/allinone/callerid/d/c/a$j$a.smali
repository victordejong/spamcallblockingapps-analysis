.class Lcom/allinone/callerid/d/c/a$j$a;
.super Ljava/lang/Object;
.source "IncomingCallScreen.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/n/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/c/a$j;->a(Lcom/allinone/callerid/model/EZSearchContacts;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/d/c/a$j;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/c/a$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/c/a$j$a;->a:Lcom/allinone/callerid/d/c/a$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/model/EZSearchContacts;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$j$a;->a:Lcom/allinone/callerid/d/c/a$j;

    iget-object v0, v0, Lcom/allinone/callerid/d/c/a$j;->a:Lcom/allinone/callerid/d/c/a;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/allinone/callerid/d/c/a;->n(Lcom/allinone/callerid/d/c/a;Lcom/allinone/callerid/model/EZSearchContacts;Z)V

    return-void
.end method
