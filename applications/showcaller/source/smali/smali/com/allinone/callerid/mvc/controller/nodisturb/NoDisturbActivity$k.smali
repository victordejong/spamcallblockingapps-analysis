.class Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$k;
.super Ljava/lang/Object;
.source "NoDisturbActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$k;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hourOfDay: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wbb"

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minute: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$k;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p1, p2}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->n0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;I)I

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$k;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p1, p3}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->c0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;I)I

    .line 6
    invoke-static {p2}, Lcom/allinone/callerid/util/i1/a;->n(I)V

    .line 7
    invoke-static {p3}, Lcom/allinone/callerid/util/i1/a;->o(I)V

    .line 8
    invoke-static {p2, p3}, Lcom/allinone/callerid/util/i;->l(II)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$k;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p2, p1}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->d0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;Ljava/lang/String;)V

    return-void
.end method
