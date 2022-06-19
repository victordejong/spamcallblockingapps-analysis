.class Lcom/allinone/callerid/start/MissedCallActivityNew$a;
.super Ljava/lang/Object;
.source "MissedCallActivityNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/MissedCallActivityNew;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/start/MissedCallActivityNew;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/MissedCallActivityNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/MissedCallActivityNew$a;->d:Lcom/allinone/callerid/start/MissedCallActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew$a;->d:Lcom/allinone/callerid/start/MissedCallActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->X(Lcom/allinone/callerid/start/MissedCallActivityNew;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew$a;->d:Lcom/allinone/callerid/start/MissedCallActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->Y(Lcom/allinone/callerid/start/MissedCallActivityNew;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew$a;->d:Lcom/allinone/callerid/start/MissedCallActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/util/a;->a(Landroid/app/Activity;)V

    return-void
.end method
