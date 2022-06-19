.class final Lcom/callapp/contacts/manager/phone/PhoneManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/callapp/framework/phone/Phone;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Lcom/callapp/contacts/action/ActionDoneListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$4;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$4;->b:Lcom/callapp/framework/phone/Phone;

    iput-object p3, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$4;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$4;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$4;->e:Z

    iput-object p6, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$4;->f:Lcom/callapp/contacts/action/ActionDoneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRowClicked(I)V
    .locals 7

    .line 743
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$4;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$4;->b:Lcom/callapp/framework/phone/Phone;

    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$4;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$4;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$4;->e:Z

    iget-object v6, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$4;->f:Lcom/callapp/contacts/action/ActionDoneListener;

    move v4, p1

    invoke-static/range {v0 .. v6}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;IZLcom/callapp/contacts/action/ActionDoneListener;)V

    return-void
.end method
