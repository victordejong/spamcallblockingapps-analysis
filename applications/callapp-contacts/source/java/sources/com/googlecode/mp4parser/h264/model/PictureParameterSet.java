package com.googlecode.mp4parser.h264.model;

import com.googlecode.mp4parser.h264.p427b.C16302b;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h264/model/PictureParameterSet.class */
public class PictureParameterSet extends BitstreamElement {
    public boolean bottom_field_pic_order_in_frame_present_flag;
    public int[] bottom_right;
    public int chroma_qp_index_offset;
    public boolean constrained_intra_pred_flag;
    public boolean deblocking_filter_control_present_flag;
    public boolean entropy_coding_mode_flag;
    public PPSExt extended;
    public int num_ref_idx_l0_active_minus1;
    public int num_ref_idx_l1_active_minus1;
    public int num_slice_groups_minus1;
    public int pic_init_qp_minus26;
    public int pic_init_qs_minus26;
    public int pic_parameter_set_id;
    public boolean redundant_pic_cnt_present_flag;
    public int[] run_length_minus1;
    public int seq_parameter_set_id;
    public boolean slice_group_change_direction_flag;
    public int slice_group_change_rate_minus1;
    public int[] slice_group_id;
    public int slice_group_map_type;
    public int[] top_left;
    public int weighted_bipred_idc;
    public boolean weighted_pred_flag;

    /* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h264/model/PictureParameterSet$PPSExt.class */
    public static class PPSExt {
        public boolean[] pic_scaling_list_present_flag;
        public ScalingMatrix scalindMatrix = new ScalingMatrix();
        public int second_chroma_qp_index_offset;
        public boolean transform_8x8_mode_flag;

        public String toString() {
            return "PPSExt{transform_8x8_mode_flag=" + this.transform_8x8_mode_flag + ", scalindMatrix=" + this.scalindMatrix + ", second_chroma_qp_index_offset=" + this.second_chroma_qp_index_offset + ", pic_scaling_list_present_flag=" + this.pic_scaling_list_present_flag + '}';
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0225, code lost:
        if (r12 != null) goto L48;
     */
    /* JADX WARN: Removed duplicated region for block: B:51:0x022e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.googlecode.mp4parser.h264.model.PictureParameterSet read(java.io.InputStream r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 726
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.h264.model.PictureParameterSet.read(java.io.InputStream):com.googlecode.mp4parser.h264.model.PictureParameterSet");
    }

    public static PictureParameterSet read(byte[] bArr) throws IOException {
        return read(new ByteArrayInputStream(bArr));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PictureParameterSet pictureParameterSet = (PictureParameterSet) obj;
        if (!Arrays.equals(this.bottom_right, pictureParameterSet.bottom_right) || this.chroma_qp_index_offset != pictureParameterSet.chroma_qp_index_offset || this.constrained_intra_pred_flag != pictureParameterSet.constrained_intra_pred_flag || this.deblocking_filter_control_present_flag != pictureParameterSet.deblocking_filter_control_present_flag || this.entropy_coding_mode_flag != pictureParameterSet.entropy_coding_mode_flag) {
            return false;
        }
        PPSExt pPSExt = this.extended;
        if (pPSExt == null) {
            if (pictureParameterSet.extended != null) {
                return false;
            }
        } else if (!pPSExt.equals(pictureParameterSet.extended)) {
            return false;
        }
        return this.num_ref_idx_l0_active_minus1 == pictureParameterSet.num_ref_idx_l0_active_minus1 && this.num_ref_idx_l1_active_minus1 == pictureParameterSet.num_ref_idx_l1_active_minus1 && this.num_slice_groups_minus1 == pictureParameterSet.num_slice_groups_minus1 && this.pic_init_qp_minus26 == pictureParameterSet.pic_init_qp_minus26 && this.pic_init_qs_minus26 == pictureParameterSet.pic_init_qs_minus26 && this.bottom_field_pic_order_in_frame_present_flag == pictureParameterSet.bottom_field_pic_order_in_frame_present_flag && this.pic_parameter_set_id == pictureParameterSet.pic_parameter_set_id && this.redundant_pic_cnt_present_flag == pictureParameterSet.redundant_pic_cnt_present_flag && Arrays.equals(this.run_length_minus1, pictureParameterSet.run_length_minus1) && this.seq_parameter_set_id == pictureParameterSet.seq_parameter_set_id && this.slice_group_change_direction_flag == pictureParameterSet.slice_group_change_direction_flag && this.slice_group_change_rate_minus1 == pictureParameterSet.slice_group_change_rate_minus1 && Arrays.equals(this.slice_group_id, pictureParameterSet.slice_group_id) && this.slice_group_map_type == pictureParameterSet.slice_group_map_type && Arrays.equals(this.top_left, pictureParameterSet.top_left) && this.weighted_bipred_idc == pictureParameterSet.weighted_bipred_idc && this.weighted_pred_flag == pictureParameterSet.weighted_pred_flag;
    }

    public int hashCode() {
        int hashCode = Arrays.hashCode(this.bottom_right);
        int i = this.chroma_qp_index_offset;
        int i2 = 1231;
        int i3 = this.constrained_intra_pred_flag ? 1231 : 1237;
        int i4 = this.deblocking_filter_control_present_flag ? 1231 : 1237;
        int i5 = this.entropy_coding_mode_flag ? 1231 : 1237;
        PPSExt pPSExt = this.extended;
        int hashCode2 = pPSExt == null ? 0 : pPSExt.hashCode();
        int i6 = this.num_ref_idx_l0_active_minus1;
        int i7 = this.num_ref_idx_l1_active_minus1;
        int i8 = this.num_slice_groups_minus1;
        int i9 = this.pic_init_qp_minus26;
        int i10 = this.pic_init_qs_minus26;
        int i11 = this.bottom_field_pic_order_in_frame_present_flag ? 1231 : 1237;
        int i12 = this.pic_parameter_set_id;
        int i13 = this.redundant_pic_cnt_present_flag ? 1231 : 1237;
        int hashCode3 = Arrays.hashCode(this.run_length_minus1);
        int i14 = this.seq_parameter_set_id;
        int i15 = this.slice_group_change_direction_flag ? 1231 : 1237;
        int i16 = this.slice_group_change_rate_minus1;
        int hashCode4 = Arrays.hashCode(this.slice_group_id);
        int i17 = this.slice_group_map_type;
        int hashCode5 = Arrays.hashCode(this.top_left);
        int i18 = this.weighted_bipred_idc;
        if (!this.weighted_pred_flag) {
            i2 = 1237;
        }
        return ((((((((((((((((((((((((((((((((((((((((((((hashCode + 31) * 31) + i) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + hashCode2) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + i9) * 31) + i10) * 31) + i11) * 31) + i12) * 31) + i13) * 31) + hashCode3) * 31) + i14) * 31) + i15) * 31) + i16) * 31) + hashCode4) * 31) + i17) * 31) + hashCode5) * 31) + i18) * 31) + i2;
    }

    public String toString() {
        return "PictureParameterSet{\n       entropy_coding_mode_flag=" + this.entropy_coding_mode_flag + ",\n       num_ref_idx_l0_active_minus1=" + this.num_ref_idx_l0_active_minus1 + ",\n       num_ref_idx_l1_active_minus1=" + this.num_ref_idx_l1_active_minus1 + ",\n       slice_group_change_rate_minus1=" + this.slice_group_change_rate_minus1 + ",\n       pic_parameter_set_id=" + this.pic_parameter_set_id + ",\n       seq_parameter_set_id=" + this.seq_parameter_set_id + ",\n       pic_order_present_flag=" + this.bottom_field_pic_order_in_frame_present_flag + ",\n       num_slice_groups_minus1=" + this.num_slice_groups_minus1 + ",\n       slice_group_map_type=" + this.slice_group_map_type + ",\n       weighted_pred_flag=" + this.weighted_pred_flag + ",\n       weighted_bipred_idc=" + this.weighted_bipred_idc + ",\n       pic_init_qp_minus26=" + this.pic_init_qp_minus26 + ",\n       pic_init_qs_minus26=" + this.pic_init_qs_minus26 + ",\n       chroma_qp_index_offset=" + this.chroma_qp_index_offset + ",\n       deblocking_filter_control_present_flag=" + this.deblocking_filter_control_present_flag + ",\n       constrained_intra_pred_flag=" + this.constrained_intra_pred_flag + ",\n       redundant_pic_cnt_present_flag=" + this.redundant_pic_cnt_present_flag + ",\n       top_left=" + this.top_left + ",\n       bottom_right=" + this.bottom_right + ",\n       run_length_minus1=" + this.run_length_minus1 + ",\n       slice_group_change_direction_flag=" + this.slice_group_change_direction_flag + ",\n       slice_group_id=" + this.slice_group_id + ",\n       extended=" + this.extended + '}';
    }

    @Override // com.googlecode.mp4parser.h264.model.BitstreamElement
    public void write(OutputStream outputStream) throws IOException {
        int[] iArr;
        C16302b c16302b = new C16302b(outputStream);
        c16302b.m7465a(this.pic_parameter_set_id, "PPS: pic_parameter_set_id");
        c16302b.m7465a(this.seq_parameter_set_id, "PPS: seq_parameter_set_id");
        c16302b.m7463a(this.entropy_coding_mode_flag, "PPS: entropy_coding_mode_flag");
        c16302b.m7463a(this.bottom_field_pic_order_in_frame_present_flag, "PPS: pic_order_present_flag");
        c16302b.m7465a(this.num_slice_groups_minus1, "PPS: num_slice_groups_minus1");
        if (this.num_slice_groups_minus1 > 0) {
            c16302b.m7465a(this.slice_group_map_type, "PPS: slice_group_map_type");
            int[] iArr2 = new int[1];
            int[] iArr3 = new int[1];
            int[] iArr4 = new int[1];
            int i = this.slice_group_map_type;
            if (i == 0) {
                for (int i2 = 0; i2 <= this.num_slice_groups_minus1; i2++) {
                    c16302b.m7465a(iArr4[i2], "PPS: ");
                }
            } else if (i == 2) {
                for (int i3 = 0; i3 < this.num_slice_groups_minus1; i3++) {
                    c16302b.m7465a(iArr2[i3], "PPS: ");
                    c16302b.m7465a(iArr3[i3], "PPS: ");
                }
            } else {
                int i4 = 3;
                if (i == 3 || i == 4 || i == 5) {
                    c16302b.m7463a(this.slice_group_change_direction_flag, "PPS: slice_group_change_direction_flag");
                    c16302b.m7465a(this.slice_group_change_rate_minus1, "PPS: slice_group_change_rate_minus1");
                } else if (i == 6) {
                    int i5 = this.num_slice_groups_minus1;
                    if (i5 + 1 <= 4) {
                        i4 = i5 + 1 > 2 ? 2 : 1;
                    }
                    c16302b.m7465a(this.slice_group_id.length, "PPS: ");
                    int i6 = 0;
                    while (true) {
                        if (i6 > this.slice_group_id.length) {
                            break;
                        }
                        c16302b.m7468a(iArr[i6], i4);
                        i6++;
                    }
                }
            }
        }
        c16302b.m7465a(this.num_ref_idx_l0_active_minus1, "PPS: num_ref_idx_l0_active_minus1");
        c16302b.m7465a(this.num_ref_idx_l1_active_minus1, "PPS: num_ref_idx_l1_active_minus1");
        c16302b.m7463a(this.weighted_pred_flag, "PPS: weighted_pred_flag");
        c16302b.m7464a(this.weighted_bipred_idc, 2, "PPS: weighted_bipred_idc");
        c16302b.m7461b(this.pic_init_qp_minus26, "PPS: pic_init_qp_minus26");
        c16302b.m7461b(this.pic_init_qs_minus26, "PPS: pic_init_qs_minus26");
        c16302b.m7461b(this.chroma_qp_index_offset, "PPS: chroma_qp_index_offset");
        c16302b.m7463a(this.deblocking_filter_control_present_flag, "PPS: deblocking_filter_control_present_flag");
        c16302b.m7463a(this.constrained_intra_pred_flag, "PPS: constrained_intra_pred_flag");
        c16302b.m7463a(this.redundant_pic_cnt_present_flag, "PPS: redundant_pic_cnt_present_flag");
        PPSExt pPSExt = this.extended;
        if (pPSExt != null) {
            c16302b.m7463a(pPSExt.transform_8x8_mode_flag, "PPS: transform_8x8_mode_flag");
            c16302b.m7463a(this.extended.scalindMatrix != null, "PPS: scalindMatrix");
            if (this.extended.scalindMatrix != null) {
                for (int i7 = 0; i7 < ((this.extended.transform_8x8_mode_flag ? 1 : 0) * 2) + 6; i7++) {
                    if (i7 < 6) {
                        c16302b.m7463a(this.extended.scalindMatrix.ScalingList4x4[i7] != null, "PPS: ");
                        if (this.extended.scalindMatrix.ScalingList4x4[i7] != null) {
                            this.extended.scalindMatrix.ScalingList4x4[i7].write(c16302b);
                        }
                    } else {
                        int i8 = i7 - 6;
                        c16302b.m7463a(this.extended.scalindMatrix.ScalingList8x8[i8] != null, "PPS: ");
                        if (this.extended.scalindMatrix.ScalingList8x8[i8] != null) {
                            this.extended.scalindMatrix.ScalingList8x8[i8].write(c16302b);
                        }
                    }
                }
            }
            c16302b.m7461b(this.extended.second_chroma_qp_index_offset, "PPS: ");
        }
        c16302b.m7460c();
    }
}
