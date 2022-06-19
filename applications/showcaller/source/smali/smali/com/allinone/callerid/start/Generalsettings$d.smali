.class Lcom/allinone/callerid/start/Generalsettings$d;
.super Ljava/lang/Object;
.source "Generalsettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/Generalsettings;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/start/Generalsettings;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/Generalsettings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/Generalsettings$d;->a:Lcom/allinone/callerid/start/Generalsettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->W1(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->W1(Z)V

    :goto_0
    return-void
.end method
