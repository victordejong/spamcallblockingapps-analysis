.class Lcom/allinone/callerid/main/BaseThemeActivity$a;
.super Ljava/lang/Object;
.source "BaseThemeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/main/BaseThemeActivity;->V(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/allinone/callerid/main/BaseThemeActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/main/BaseThemeActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/main/BaseThemeActivity$a;->e:Lcom/allinone/callerid/main/BaseThemeActivity;

    iput-object p2, p0, Lcom/allinone/callerid/main/BaseThemeActivity$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/main/BaseThemeActivity$a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->e2(Ljava/lang/String;)V

    return-void
.end method
